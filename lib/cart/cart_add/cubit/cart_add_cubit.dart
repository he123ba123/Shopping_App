import 'package:app3/cart/cart_add/Data/cart_data.dart';
import 'package:app3/cart/cart_add/cubit/cart_add_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartAddCubit extends Cubit<CartAddState> {
  CartAddCubit() : super(CartAddInitial());
  static CartAddCubit get(context) => BlocProvider.of(context);

  CartCat cartCat = CartCat();

  addCarCubit({required String ProductId}) {
    emit(CartAddLOdding());
    cartCat.addCart(id: ProductId);
    emit(CartAddSuccess());
    getCartCubit();
  }

  getCartCubit() async {
    emit(CartAddLOdding());

    var success = await cartCat.getData();
    emit(CartAddAllSucces(listCart: success));
  }

  deleteCartCubic({required String ProductId}) {
    emit(CartAddLOdding());
    cartCat.deleteCart(ProductId: ProductId);
    emit(Cartdelete());
    getCartCubit();
  }
}
