import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/cart_response_model/cart_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/get_cart_response_model/get_cart_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/remove_from_cart_query/remove_from_cart_query.dart';
import 'package:kicks_sneakerapp/domain/models/cart/update_cart_query/update_cart_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupon/get_coupon_response/get_coupon_response.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';

abstract class CartRepository {
  Future<Either<Failure, CartResponseModel>> addToCart(
      {required AddToCartModel addToCartModel});

  Future<Either<Failure, GetCartResponseModel>> getCart(
      {required IdQuery idQuery});

  Future<Either<Failure, CartResponseModel>> updateQuantityPlus(
      {required UpdateCartQuery updateCartQuery});

  Future<Either<Failure, CartResponseModel>> updateQuantityMinus(
      {required UpdateCartQuery updateCartQuery});

  Future<Either<Failure, CartResponseModel>> removeFromCart(
      {required RemoveFromCartQuery removeFromCartQuery});

  Future<Either<Failure, GetCouponResponse>> getCoupons();
}
