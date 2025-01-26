import 'package:app3/cart/cart_add/Data/cart_data.dart';
import 'package:app3/cart/cart_add/cubit/cart_add_cubit.dart';
import 'package:app3/core/block/block.dart';
import 'package:app3/core/helder/cash.dart';
import 'package:app3/favourite/cubit/favourite_cubit.dart';
import 'package:app3/favourite/data/favourite_Data.dart';
import 'package:app3/favourite/view/screen/favourite_Screen.dart';
import 'package:app3/feature/home/view/screen/Splash_Screen.dart';
import 'package:app3/feature/home/view/screen/cards_screen.dart';
import 'package:app3/feature_logIn/models/data/login_data.dart';
import 'package:app3/feature_logIn/view/screen/login_screen.dart';
import 'package:app3/feature_new/cubit/auth_state_state.dart';
import 'package:app3/home_lab_catogry/model/cubit/cubit/cart_cubit.dart';
import 'package:app3/home_lab_catogry/model/data/data_catogery.dart';
import 'package:app3/home_lab_catogry/view/screens/lap_catogery_cart.dart';
import 'package:app3/profile_user/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app3/profile_user/model/profile_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CashShared.init();
  //FavData.getAllFav(productId: "64666d3a91c71d884185b774");
  Bloc.observer = MyBlocObserver();
  profileDataUsser.getProfile();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => CartAddCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit()..getAllCubit(),
        ),
      ],
      child: const ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(debugShowCheckedModeBanner: false, home: CardView()),
      ),
    );
  }
}


// all text .sp
// hight .h
// width .w
//BorderRadius  .r
// padding .h