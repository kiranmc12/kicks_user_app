import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_preferences.dart';
import 'package:kicks_sneakerapp/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/get_cart_response_model/get_cart_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/get_cart_response_model/inventory_cart.dart';
import 'package:kicks_sneakerapp/domain/models/cart/remove_from_cart_query/remove_from_cart_query.dart';
import 'package:kicks_sneakerapp/domain/models/cart/update_cart_query/update_cart_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupon/get_coupon_response/datum.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/repositories/cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;
  int cartId = 0;
  int usedCouponId = 0;

  CartBloc(this.cartRepository) : super(CartState.Initial()) {
    on<_GetCart>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          isDone: false,
          hasError: false,
          quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final result =
          await cartRepository.getCart(idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (faliure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: "Something went wrong,please refresh")),
          (getCartResponseModel) {
        Map<int, int> map = {};
        double bagTotal = 0, amountPayable = 0;
        double priceWithoutOffer = 0;
        if (getCartResponseModel.data!.data != null) {
          map = setQuantity(getCartResponseModel.data!.data!);
          for (var item in getCartResponseModel.data!.data!) {
            priceWithoutOffer += item.totalPrice!;
            bagTotal += item.discountedPrice!;
            amountPayable += item.discountedPrice!;
          }
        }
        emit(state.copyWith(
            isLoading: false,
            priceWithoutOffer: priceWithoutOffer,
            amountPayable: amountPayable,
            bagTotal: bagTotal,
            getCartResponseModel: getCartResponseModel,
            cartItems: map));
        cartId = getCartResponseModel.data!.id!;
      });
    });

    on<_AddToCartModel>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          isDone: false,
          hasError: false,
          quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final model = event.addToCartModel;
      model.userId = tokenModel.userId;
      final result = await cartRepository.addToCart(addToCartModel: model);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: "Something went wrong please try again")),
          (cartResponseModel) {
        Map<int, int> map = Map.from(state.cartItems);
        map[event.addToCartModel.inventoryId] = 1;
        emit(state.copyWith(
            isLoading: false,
            isDone: true,
            cartItems: map,
            message: "Item added to cart sucessfully"));
      });
    });

    on<_RemoveFromCart>((event, emit) async {
      emit(state.copyWith(
          isDone: false, hasError: false, quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final result = await cartRepository.removeFromCart(
          removeFromCartQuery: RemoveFromCartQuery(
              cartId: cartId, inventoryId: event.productId));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              message: "Something went wrong ,Please try again")),
          (cartResponseModel) {
        emit(state.copyWith(
            isDone: true,
            hasError: false,
            message: "Item removed from cart sucessfully"));
        add(const CartEvent.getCart());
      });
    });
    on<_UpdateQuantityPlus>((event, emit) async {
      final result = await cartRepository.updateQuantityPlus(
          updateCartQuery:
              UpdateCartQuery(cartId: cartId, inventoryId: event.productId));
      print(cartId);
      print(event.productId);
      result.fold((failure) => null, (cartResponseModel) {
        Map<int, int> map = Map.from(state.cartItems);
        map[event.productId] = map[event.productId]! + 1;
        final item = state.getCartResponseModel!.data!.data!
            .firstWhere((item) => item.productId == event.productId);
        emit(state.copyWith(
            quantityIndicator: true,
            cartItems: map,
            priceWithoutOffer: state.priceWithoutOffer! + item.totalPrice!,
            bagTotal: state.bagTotal! + item.discountedPrice!,
            amountPayable: state.amountPayable! + item.discountedPrice!));
      });
    });

    on<_UpdateQuantityMinus>((event, emit) async {
      if (state.cartItems[event.productId] == 1) {
        add(CartEvent.removeFromCart(productId: event.productId));
        return;
      }
      final result = await cartRepository.updateQuantityMinus(
          updateCartQuery:
              UpdateCartQuery(cartId: cartId, inventoryId: event.productId));
      result.fold((failure) => null, (cartResponseModel) {
        Map<int, int> map = Map.from(state.cartItems);
        map[event.productId] = map[event.productId]! - 1;
        final item = state.getCartResponseModel!.data!.data!
            .firstWhere((item) => item.productId == event.productId);
        emit(state.copyWith(
            quantityIndicator: true,
            cartItems: map,
            priceWithoutOffer: state.priceWithoutOffer! - item.totalPrice!,
            bagTotal: state.bagTotal! - item.discountedPrice!,
            amountPayable: state.amountPayable! - item.discountedPrice!));
      });
    });

    on<_GetCoupon>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isDone: false,
          quantityIndicator: false));
      final result = await cartRepository.getCoupons();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message)), (getCartResponseModel) {
        emit(state.copyWith(
            isLoading: false, coupons: getCartResponseModel.data!));
      });
    });
    on<_RemoveCoupon>((event, emit) {
      usedCouponId = 0;
      add(const CartEvent.getCart());
    });

    on<_ChooseCoupon>((event, emit) {
      usedCouponId = event.coupon.id!;
      double newTotal =
          ((100 - event.coupon.discountRate!) / 100) * state.amountPayable!;
      emit(state.copyWith(amountPayable: newTotal));
    });
  }

  Map<int, int> setQuantity(List<InventoryCart> items) {
    Map<int, int> map = {};
    for (var item in items) {
      map[item.productId!] = item.quantity!;
    }
    return map;
  }
}
