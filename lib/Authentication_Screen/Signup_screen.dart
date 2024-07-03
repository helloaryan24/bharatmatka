import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../All_Custom_Faction/All_Widget.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/TextStyle.dart';
import '../controller/Signup_Controller.dart';
import 'Authentication_Widget/Authentication_Widget.dart';

class Signup_Screen extends StatelessWidget {
  final SignupController signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(
                style: TextStyles.Medium2,
                backgroundColor: AppColors.buttoncolor,
                onTap: () {
                  signupController.signup();
                },
                text: 'Sign Up',
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyles.Medium1.copyWith(
                        color: AppColors.blackcolor),
                    children: [
                      TextSpan(text: 'Have an account? '),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyles.Bold2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: AppColors.bgcolor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: TextStyles.Bold,
              ),
              SizedBox(height: 10),
              buildInputField(
                hintText: 'Username',
                controller: signupController.usernameController,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 10),
              buildInputField(
                hintText: 'Phone',
                controller: signupController.phoneController,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10),
              InputFieldPassword(
                hintText: 'Password',
                controller: signupController.passwordController,
                obscureText: true,
                length: 10,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 10),
              InputFieldPassword(
                hintText: 'M Pin',
                controller: signupController.mpinController,
                obscureText: true,
                length: 4,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
