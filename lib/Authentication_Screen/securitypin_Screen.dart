import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

import '../All_Custom_Faction/All_Widget.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/Image.dart';
import '../All_Custom_Faction/TextStyle.dart';
import '../Bottom Bar/BottomBar_Page.dart';
import '../controller/mpin_controller.dart';

class Securitypin_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SecurityPinController controller = Get.put(SecurityPinController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgcolor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(
            style: TextStyles.Medium2,
            backgroundColor: AppColors.buttoncolor,
            onTap: () {
              if (controller.mpinController.value.text.length == 4) {
                Get.offAllNamed('/Bottombar_Page');
              } else {
                Get.snackbar(
                  '',
                  titleText: Text(
                    'Error',
                    style: TextStyles.Bold3,
                  ),
                  '',
                  messageText: Text(
                    'Please enter a 4-digit pin',
                    style: TextStyles.Medium1,
                  ),
                  snackPosition: SnackPosition.BOTTOM,
                  borderColor: Colors.yellow,
                  borderRadius: 8,
                  borderWidth: 2,
                  backgroundColor: AppColors.buttoncolor,
                  colorText: Colors.black,
                );
              }
            },
            text: 'Done',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Images.logoimg,
                fit: BoxFit.cover,
                height: 300,
              ),
              Text(
                'Please enter your security pin',
                style: TextStyles.Medium1,
              ),
              SizedBox(height: 10),
              Obx(
                () => PinCodeTextField(
                  controller: controller.mpinController.value,
                  appContext: context,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderWidth: 2,
                    activeFillColor: Colors.white,
                    disabledColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: Colors.yellow,
                    selectedColor: AppColors.buttoncolor,
                    errorBorderColor: Colors.red,
                    inactiveFillColor: Colors.white,
                    inactiveColor: AppColors.buttoncolor,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 2),
                  ),
                  autoFocus: false,
                  keyboardType: TextInputType.number,
                  length: 4,
                  onChanged: (userInput) {},
                  onSubmitted: (userInput) {},
                  cursorColor: Colors.transparent,
                  textStyle: TextStyle(
                    fontSize: 20,
                    height: 1.6,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.transparent,
                  mainAxisAlignment: MainAxisAlignment.center,
                  readOnly: false,
                  obscureText: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
