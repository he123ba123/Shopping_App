import 'package:app3/cart/cart_add/cubit/cart_add_cubit.dart';
import 'package:app3/favourite/cubit/favourite_cubit.dart';
import 'package:app3/favourite/view/screen/favourite_Screen.dart';
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature/home/view/screen/cards_screen.dart';
import 'package:app3/home_lab_catogry/model/cubit/cubit/cart_cubit.dart';
import 'package:app3/home_lab_catogry/model/cubit/cubit/cart_state.dart';
import 'package:app3/home_lab_catogry/view/widgets/appBar.dart';
import 'package:app3/profile_user/view/screen/profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class lapCatogryScreen extends StatelessWidget {
  const lapCatogryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CardView(),
      appBar: appBarLabtops(context),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            label: 'Home', icon: Icon(Icons.home, color: AppColors.textColor)),
        BottomNavigationBarItem(
            label: 'Card',
            icon: Icon(
              Icons.shopping_cart,
              color: AppColors.buttonColorGray,
            )),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              color: AppColors.buttonColorGray,
            )),
      ]),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Labtops"),
      //   actions: const [
      //     // Padding(
      //     //   padding: EdgeInsets.all(8.0),
      //     //   child: IconButton(onPressed: (){}, icon: Icons.shopping_cart)
      //     // )
      //   ],
      // ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartSuccess) {
            return Card(
              child: ListView.builder(
                itemCount: state.listLap.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                        iconColor: AppColors.textColor,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              state.listLap[index].name,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        leading: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.network(state.listLap[index].image)),
                        trailing: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // Navigator.of(context).push(
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             const cartCatScreen()));
                                      CartAddCubit.get(context).addCarCubit(
                                          ProductId: state.listLap[index].id);
                                      if (kDebugMode) {
                                        print(
                                            "------------------------------------------------------------------");
                                      }
                                    },
                                    icon: const Icon(Icons.shopping_cart),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        FavoriteCubit.get(context)
                                            .addToFavoriteCubit(
                                                productId:
                                                    state.listLap[index].id);
                                      },
                                      icon: const Icon(Icons.favorite_outline))
                                ],
                              ),
                            ),
                            // const Text(
                            //   "add to cart",
                            //   style: TextStyle(
                            //       color: Color.fromARGB(255, 67, 56, 56)),
                            // ),
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Column(
                            children: [
                              Text(
                                " Price: ${state.listLap[index].price.toString()} \$",
                                style: const TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        helperText: "Quantity",
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
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