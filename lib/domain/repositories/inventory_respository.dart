import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_individual_product_details/get_individual_product_details.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_page_query/get_inventory_page_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/search_model/search_model.dart';

abstract class InventoryRepository {
  Future<Either<Failure, GetInventoryResponseModel>> getInventorys({
    required GetInventoryPageQuery getInventoryPageQuery,
  });

  Future<Either<Failure, GetIndividualProductDetails>> getIndividualDetails(
      {required IdQuery idQuery});

  Future<Either<Failure, GetInventoryResponseModel>> search(
      {required SearchModel searchModel});

  Future<Either<Failure, GetInventoryResponseModel>> getCategoryInventories(
      {required IdQuery idQurrey});
}
