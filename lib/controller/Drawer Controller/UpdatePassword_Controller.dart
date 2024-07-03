import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UpdatePassword_Controller extends GetxController {
  final newpasswordController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    newpasswordController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void continuee() async {
    // User is not logged in, navigate to login screen
    Get.toNamed('/Signup_Screen');

  }

}
