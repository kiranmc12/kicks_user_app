part of 'inventory_bloc.dart';

@freezed
class InventoryState with _$InventoryState {
  const factory InventoryState(
      {required bool isLoading,
      required bool loadMore,
      required bool hasError,
      bool? expired,
      String? message,
      GetIndividualProductDetails? getIndividualProductResponse,
      List<Inventory>? inventories}) = _Initial;

  factory InventoryState.initial() =>
      const InventoryState(isLoading: true, hasError: false, loadMore: false,expired: false);
}
