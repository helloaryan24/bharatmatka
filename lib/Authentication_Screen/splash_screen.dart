import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../All_Custom_Faction/AppRoutes.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/Image.dart';
import '../All_Custom_Faction/Size.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = ScreenSize(context);

    // Navigate to LoginScreen after a delay
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed('/Login_Screen');
    });

    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Center(
        child: Image.asset(
          Images.logoimg,
          fit: BoxFit.cover,
          height: 400,
        ),
      ),
    );
  }
}
