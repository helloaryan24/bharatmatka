import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../All_Custom_Faction/All_Widget.dart';
import '../All_Custom_Faction/Colors.dart';
import '../All_Custom_Faction/TextStyle.dart';
import '../Authentication_Screen/Authentication_Widget/Authentication_Widget.dart';
import '../Main_Screen/CustomAppBar.dart';
import '../controller/Drawer Controller/UpdatePassword_Controller.dart';

class Update_Password extends StatelessWidget {
  final UpdatePassword_Controller UpdatePasswordController = Get.put(UpdatePassword_Controller());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: CustomAppBar1(title: 'Update Password'),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text(
              'Lets enter your new password',
              style: TextStyles.Bold4,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'New password',
              style: TextStyles.Bold4,
            ),
            SizedBox(
              height: 5,
            ),
            InputFieldPassword(
              hintText: 'Enter your new password',
              controller: UpdatePasswordController.newpasswordController,
              obscureText: true,
              length: 10,
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Confirm password',
              style: TextStyles.Bold4,
            ),
            SizedBox(
              height: 5,
            ),
            InputFieldPassword(
              hintText: 'Enter confirm password',
              controller: UpdatePasswordController.passwordController,
              obscureText: true,
              length: 10,
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              style: TextStyles.Medium2,
              backgroundColor: AppColors.buttoncolor,
              onTap: () {
                // loginController.continuee();
              },
              text: 'UPDATE',
            ),
          ],
        ),
      ),
    );
  }
}
