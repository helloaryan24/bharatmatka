import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../All_Custom_Faction/All_Widget.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/TextStyle.dart';
import '../controller/Login_Controller.dart';
import 'Authentication_Widget/Authentication_Widget.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

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
                  loginController.continuee();
                },
                text: 'Continue',
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle sign-up action
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyles.Medium1.copyWith(
                        color: AppColors.blackcolor),
                    children: [
                      TextSpan(text: 'Don’t have an account? '),
                      TextSpan(
                        text: 'Sign Up',
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
                'Sign in',
                style: TextStyles.Bold,
              ),
              SizedBox(height: 10),
              buildInputField(
                hintText: 'Phone',
                controller: loginController.phoneController,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              InputFieldPassword(
                hintText: 'Password',
                controller: loginController.passwordController,
                obscureText: true,
                length: 10,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.Medium1,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
