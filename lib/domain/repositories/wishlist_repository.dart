import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/sucess_model/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/addto_wish_list_model/add_to_wish_list_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/get_wish_list_response_model/get_wish_list_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/remove_from_wishlist/remove_from_wishlist_query.dart';

abstract class WishlistRepository {
  Future<Either<Failure, GetWishListResponseModel>> getWishList(
      {required IdQuery idQuery});

  Future<Either<Failure, SucessModel>> addToWishList(
      {required AddToWishList addToWishListModel});

  Future<Either<Failure, SucessModel>> removeFromWishList(
      {required RemoveFromWishListQurrey idQurrey});
}
