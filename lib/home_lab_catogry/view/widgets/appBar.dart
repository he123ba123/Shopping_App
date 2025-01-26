import 'package:app3/cart/view/screen/cart_screen.dart';
import 'package:app3/favourite/view/screen/favourite_Screen.dart';
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:flutter/material.dart';

AppBar appBarLabtops(BuildContext context) {
  return AppBar(
    toolbarHeight: 90,
    title: const Text(
      'Labtops ',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: AppColors.buttonColorWhite,
      ),
    ),
    backgroundColor: AppColors.textColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30.0),
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.shopping_cart,
          color: AppColors.buttonColorWhite,
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const cartCatScreen()));
        },
      ),
      IconButton(
        icon: const Icon(
          Icons.favorite,
          color: AppColors.buttonColorWhite,
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FavouriteScreen()));
        },
      ),

      // IconButton(
      //   icon: const Icon(
      //     Icons.notifications,
      //     color: AppColors.buttonColorWhite,
      //   ),
      //   onPressed: () {},
      // ),
      IconButton(
        icon: const Icon(
          Icons.more_vert,
          color: AppColors.buttonColorWhite,
        ),
        onPressed: () {},
      ),
    ],
  );
}
