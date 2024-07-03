import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void continuee() async {
   // User is not logged in, navigate to login screen
    Get.toNamed('/Signup_Screen');

  }

}
