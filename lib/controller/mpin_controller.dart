import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SecurityPinController extends GetxController {
  var mpinController = TextEditingController().obs;
  var pin = ''.obs;

  void onPinChanged(String userInput) {
    pin.value = userInput;
    print(userInput);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
}
