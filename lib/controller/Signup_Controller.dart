import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupController extends GetxController {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final mpinController = TextEditingController();

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    mpinController.dispose();
    super.onClose();
  }

  void signup() async {
    // User is not logged in, navigate to login screen
    Get.toNamed('/Securitypin_Screen');

  }

}
