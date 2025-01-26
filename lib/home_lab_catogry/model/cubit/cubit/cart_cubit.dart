import 'package:app3/home_lab_catogry/model/cubit/cubit/cart_state.dart';
import 'package:app3/home_lab_catogry/model/data/data_catogery.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final LapData cat = LapData();
  getAllCubit() async {
    emit(CartLoading());
    var success = await cat.getAllLap();
    emit(CartSuccess(listLap: success));
  }
}
