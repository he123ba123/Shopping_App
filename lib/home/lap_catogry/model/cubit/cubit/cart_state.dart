import 'package:app3/home/lap_catogry/model/data/model_catogery.dart';

sealed class CartState {}

final class CartInitial extends CartState {}

final class CartSuccess extends CartState {
  List<ModelDataCatogery> listLap;
  CartSuccess({required this.listLap});
}

final class CartLoading extends CartState {}
