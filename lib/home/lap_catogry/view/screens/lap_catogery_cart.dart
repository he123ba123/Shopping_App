import 'package:app3/cart/cart_add/cubit/cart_add_cubit.dart';
import 'package:app3/core/widgets/BottomNavigatorBar.dart';
import 'package:app3/home/favourite/cubit/favourite_cubit.dart';
import 'package:app3/home/catogeryCard/home/view/Widgets/colors.dart';
import 'package:app3/home/catogeryCard/home/view/screen/cards_screen.dart';
import 'package:app3/home/lap_catogry/model/cubit/cubit/cart_cubit.dart';
import 'package:app3/home/lap_catogry/model/cubit/cubit/cart_state.dart';
import 'package:app3/home/lap_catogry/view/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class lapCatogryScreen extends StatelessWidget {
  const lapCatogryScreen({super.key});

//   int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLabtops(context),
      bottomNavigationBar: const BottomNavigatorBar(),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartSuccess) {
            return Card(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.70,
                ),
                itemCount: state.listLap.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        SizedBox(
                          height: 120,
                          width: double.infinity,
                          child: Image.network(state.listLap[index].image,
                              fit: BoxFit.fill),
                        ),
                        // Title
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            state.listLap[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        // Price and Cart/Favorite Icons
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Price: ${state.listLap[index].price.toString()} \$",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Row(
                        //     children: [
                        //       Expanded(
                        //         child: TextFormField(
                        //           decoration: const InputDecoration(
                        //               helperText: "Quantity"),
                        //         ),
                        //       ),
                        //       IconButton(
                        //         onPressed: () {},
                        //         icon: const Icon(Icons.add),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Action Buttons (Add to Cart, Favorite)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                onPressed: () {
                                  CartAddCubit.get(context).addCarCubit(
                                      ProductId: state.listLap[index].id);
                                },
                                icon: const Icon(
                                  Icons.add_shopping_cart_rounded,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 30, left: 45),
                              child: IconButton(
                                onPressed: () {
                                  FavoriteCubit.get(context).addToFavoriteCubit(
                                      productId: state.listLap[index].id);
                                },
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}

// BlocBuilder<CartCubit, CartState>(
    //       builder: (context, state) {
    //         if (state is CartSuccess) {
    //           return ListView.builder(
    //               itemCount: state.post.length,
    //               itemBuilder: (context, index) {
    //                 return CartSuccess(listLap: []
                      
    //                 );
    //               });
    //         } else {
    //          }
               
            
    //       }