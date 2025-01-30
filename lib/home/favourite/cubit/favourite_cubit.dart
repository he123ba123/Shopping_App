// class FavouriteCubit extends Cubit<FavouriteState> {
//   FavouriteCubit() : super(FavouriteInitial());
//   final FavData favData = FavData();
//   static FavData get(context) => BlocProvider.of(context);
//   addFavCubit({required String productId}) async {
//     emit(FavoureLoadding());
//     await favData.addFav(productId: productId);
//     emit(FavouriteSuccess());
//   }
// }

import 'package:app3/home/favourite/cubit/favourite_state.dart';
import 'package:app3/home/favourite/data/favourite_Data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  static FavoriteCubit get(context) => BlocProvider.of(context);
  FavData favoriteService = FavData();

  addToFavoriteCubit({required String productId}) async {
    emit(FavoriteLoading());
    await favoriteService.addFav(productId: productId);
    emit(FavoriteSuccess());
  }

  getAllFavourite() async {
    emit(FavoriteLoading());
    var success = await FavData.getAllFav();
    emit(FavoriteGetSucces(list: success));
  }

  deleteFavouriteCubit({required String productId}) async {
    emit(FavoriteLoading());
    favoriteService.delete(productId: productId);
    getAllFavourite();
  }
}
