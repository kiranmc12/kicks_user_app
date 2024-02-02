import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_individual_product_details/get_individual_product_details.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_page_query/get_inventory_page_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/search_model/search_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/inventory_respository.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final InventoryRepository inventoryRepository;
  int page = 1;
  bool isScrollLoading = false;

  InventoryBloc(this.inventoryRepository) : super(InventoryState.initial()) {
    on<_GetInventories>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, expired: false));
      page = 1;
      final result = await inventoryRepository.getInventorys(
          getInventoryPageQuery: GetInventoryPageQuery(page: 1));
      result.fold((failure) {
        emit(state.copyWith(
            hasError: true,
            isLoading: false,
            message: "Something went wronng"));
      },
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false, inventories: getInventoryResponseModel.data)));
    });

    on<_NextPage>((event, emit) async {
      emit(state.copyWith(loadMore: true));
      isScrollLoading = true;
      page += 1;
      final result = await inventoryRepository.getInventorys(
          getInventoryPageQuery: GetInventoryPageQuery(page: page));
      result.fold(
          (failure) => emit(state.copyWith(hasError: true, loadMore: false)),
          (getInventoryResponseModel) {
        if (getInventoryResponseModel.data == null) {
          emit(state.copyWith(loadMore: false));
          return;
        }
        emit(state.copyWith(loadMore: false, inventories: [
          ...state.inventories!,
          ...getInventoryResponseModel.data!
        ]));
      });
      isScrollLoading = false;
    });

    on<_GetInventoryDetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, expired: false));
      final result = await inventoryRepository.getIndividualDetails(
          idQuery: IdQuery(id: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: "Something went wrong refresh page again")),
          (getIndividualProductDetails) {
        emit(state.copyWith(
            isLoading: false,
            getIndividualProductResponse: getIndividualProductDetails));
      });
    });

    on<_SearchInventories>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result =
          await inventoryRepository.search(searchModel: event.searchModel);
      result.fold(
          (failure) => emit(state.copyWith(isLoading: false, hasError: true)),
          (getInventoryResponse) {
        emit(state.copyWith(
            isLoading: false, inventories: getInventoryResponse.data));
      });
    });

    on<_GetCategoryInventories>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await inventoryRepository.getCategoryInventories(
          idQurrey: event.idQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: "Something went wrong,Please try again")),
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false, inventories: getInventoryResponseModel.data)));
    });
  }
}
