import 'package:app3/home/catogeryCard/home/view/Widgets/colors.dart';
import 'package:app3/home/auth/view/screen/sign%20_In_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 6),
      () => {
        if (mounted)
          {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SingnInScreen()),
            )
          }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.buttonColorWhite,
      body: SpinKitChasingDots(
        color: AppColors.textColor,
        size: 200,
      ),
    );
  }
}
