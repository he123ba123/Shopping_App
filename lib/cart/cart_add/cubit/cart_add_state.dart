
import 'package:app3/cart/cart_add/model/addCartShowModel.dart';

sealed class CartAddState {}

final class CartAddInitial extends CartAddState {}
final class CartAddSuccess extends CartAddState {}
final class CartAddLOdding extends CartAddState {}
final class Cartdelete extends CartAddState {}
final class CartAddAllSucces extends CartAddState {
  List<ModelAddCart> listCart;
  CartAddAllSucces({required this.listCart});
}
