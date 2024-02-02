part of 'inventory_bloc.dart';

@freezed
class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.getInventories() = _GetInventories;
  const factory InventoryEvent.nextPage() = _NextPage;
  const factory InventoryEvent.getInventoryDetails({required int id}) =
      _GetInventoryDetails;
        const factory InventoryEvent.searchInventories(
      {required SearchModel searchModel}) = _SearchInventories;
        const factory InventoryEvent.getCategoryInventories(
      {required IdQuery idQurrey}) = _GetCategoryInventories;
}
