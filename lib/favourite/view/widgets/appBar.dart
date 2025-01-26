import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:flutter/material.dart';

AppBar appBarFavourite() {
  return AppBar(
    toolbarHeight: 90,
    title: const Text(
      'Favourite ',
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
          Icons.search,
          color: AppColors.buttonColorWhite,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.notifications,
          color: AppColors.buttonColorWhite,
        ),
        onPressed: () {},
      ),
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
