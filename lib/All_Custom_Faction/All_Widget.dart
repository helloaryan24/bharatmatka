import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Colors.dart';
import 'Image.dart';
import 'TextStyle.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onTap;
  final TextStyle style;

  const CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.onTap,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black38,
                blurRadius: 2.0,
                spreadRadius: 0,
                offset: Offset(-0, 2),
              ),
            ],
            color: backgroundColor,
            // border: Border.all(width: 2,color: Colors.black),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: style,
          ),
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onTap;
  final TextStyle style;

  const CustomButton1({
    required this.text,
    required this.backgroundColor,
    required this.onTap,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black38,
                blurRadius: 2.0,
                spreadRadius: 0,
                offset: Offset(-0, 2),
              ),
            ],
            color: backgroundColor,
            // border: Border.all(width: 2,color: Colors.black),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}
class CustomButton2 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onTap;
  final TextStyle style;

  const CustomButton2({
    required this.text,
    required this.backgroundColor,
    required this.onTap,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black38,
                blurRadius: 2.0,
                spreadRadius: 0,
                offset: Offset(-0, 2),
              ),
            ],
            color: backgroundColor,
            // border: Border.all(width: 2,color: Colors.black),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}

class roundCustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onTap;
  final TextStyle style;

  const roundCustomButton({
    required this.text,
    required this.backgroundColor,
    required this.onTap,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black38,
                blurRadius: 2.0,
                spreadRadius: 0,
                offset: Offset(-0, 2),
              ),
            ],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}

Widget customAppbarhomescreen(
  BuildContext context,
) {
  final screenSize = MediaQuery.of(context).size;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 40,
        width: 40,
      ),
      // Image.asset(
      //   Images.logoimage,
      //   width: screenSize.width * 0.5,
      // ),
      Container(
        height: 40,
        width: 40,
      ),
    ],
  );
}

bool containsUppercaseLetter(String str) {
  // Check if the password contains at least one uppercase letter
  return str.contains(RegExp(r'[A-Z]'));
}

bool containsSpecialCharacter(String str) {
  // Check if the password contains at least one special character
  return str.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
}

bool isNumeric(String str) {
  // Check if the string consists only of numeric characters
  return double.tryParse(str) != null;
}

void showLoading() {
  Get.dialog(
    WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
          ),
        ),
      ),
    ),
  );
}

void closeLoading() {
  Get.back();
}

void showSuccessSnackbar(String msg,
    {SnackPosition? position,
    Color iconColor = Colors.red,
    IconData icon = Icons.error,
    Color containerColor = Colors.red}) {
  Get.closeAllSnackbars();
  Get.snackbar(
    '',
    '',
    messageText: Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: iconColor,
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    msg,
                    // style: TextStyles.Merriblack3,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          )
        ],
      ),
    ),
    titleText: const SizedBox.shrink(),
    snackPosition: position ?? SnackPosition.BOTTOM,
    backgroundColor: Colors.white,
    colorText: Colors.white,
    borderRadius: 5,
    margin: const EdgeInsets.all(10),
    padding: EdgeInsets.all(0),
    dismissDirection: DismissDirection.horizontal,
    boxShadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 1,
        spreadRadius: 1,
        offset: Offset(0, 0),
      ),
    ],
  );
}

showErrorSnackbar(String msg, {SnackPosition? position}) {
  Get.closeAllSnackbars();
  Get.snackbar(
    '',
    '',
    messageText: Padding(
      padding: const EdgeInsets.only(bottom: 5),
      // child: Text(msg, style: TextStyles.Merriblack3),
    ),
    titleText: const SizedBox.shrink(),
    snackPosition: position ?? SnackPosition.BOTTOM,
    backgroundColor: Colors.red[900],
    dismissDirection: DismissDirection.horizontal,
    margin: const EdgeInsets.all(20),
  );
}
