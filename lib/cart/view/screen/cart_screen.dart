import 'package:app3/cart/cart_add/cubit/cart_add_cubit.dart';
import 'package:app3/cart/cart_add/cubit/cart_add_state.dart';
import 'package:app3/cart/view/widgets/appBar.dart';
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cartCatScreen extends StatelessWidget {
  const cartCatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartAddCubit()..getCartCubit(),
      child: Scaffold(
        appBar: appBarCart(),
        body: BlocBuilder<CartAddCubit, CartAddState>(
          builder: (context, state) {
            if (state is CartAddAllSucces) {
              return ListView.builder(
                itemCount: state.listCart.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 1.8, bottom: 1.8),
                    child: Card(
                      child: ListTile(
                        trailing: IconButton(
                          onPressed: () {
                            CartAddCubit.get(context).deleteCartCubic(
                                ProductId: state.listCart[index].image);
                          },
                          icon: const Icon(Icons.delete),
                          color: AppColors.buttonColorGray,
                        ),
                        title: Text(state.listCart[index].name),
                        subtitle:
                            Text(state.listCart[index].quantity.toString()),
                        leading: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.network(state.listCart[index].image)),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
