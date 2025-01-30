import 'package:app3/cart/cart_add/cubit/cart_add_cubit.dart';
import 'package:app3/core/block/block.dart';
import 'package:app3/core/helder/cash.dart';
import 'package:app3/home/catogeryCard/home/view/screen/Splash_Screen.dart';
import 'package:app3/home/favourite/cubit/favourite_cubit.dart';
import 'package:app3/home/auth/cubit/auth_state_state.dart';
import 'package:app3/home/lap_catogry/model/cubit/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CashShared.init();
  //FavData.getAllFav(productId: "64666d3a91c71d884185b774");
  Bloc.observer = MyBlocObserver();
  // profileDataUsser.getProfile();
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
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: SplashScreen()),
      ),
    );
  }
}


// all text .sp
// hight .h
// width .w
//BorderRadius  .r
// padding .h