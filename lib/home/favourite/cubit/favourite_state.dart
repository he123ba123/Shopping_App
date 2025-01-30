// sealed class FavouriteState {}

// final class FavouriteInitial extends FavouriteState {}
// final class FavoureLoadding extends FavouriteState {}
// final class FavouriteSuccess extends FavouriteState {}

import 'package:app3/home/favourite/model/favourite_Model.dart';

sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteSuccess extends FavoriteState {}

final class FavoriteLoading extends FavoriteState {}

final class FavoriteGetSucces extends FavoriteState {
  List<FavModel> list;
  FavoriteGetSucces({required this.list});
}
