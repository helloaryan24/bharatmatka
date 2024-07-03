import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../../All_Custom_Faction/Colors.dart';
import '../../All_Custom_Faction/TextStyle.dart';

Widget buildInputField({
  required String hintText,
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  bool obscureText = false,
  TextInputAction? textInputAction,
  FocusNode? focusNode,
  FocusNode? nextFocusNode,
}) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        cursorColor: AppColors.blackcolor,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: 'Medium',
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textfiledbackcolor,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Medium',
          ),
          contentPadding: EdgeInsets.all(15),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackcolor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackcolor,
            ),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(10)
        ]),
  );
}


class InputFieldPassword extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final int length; // This is the max length you want to limit the input to

  const InputFieldPassword({
    required this.hintText,
    required this.length,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputFieldPassword> {
  bool _isObscured = false;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: _isObscured,
        cursorColor: AppColors.blackcolor,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: 'Medium',
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(widget.length), // Apply the formatter here
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textfiledbackcolor,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Medium',
          ),
          contentPadding: EdgeInsets.all(15),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackcolor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackcolor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
            icon: Icon(
              _isObscured ? Icons.visibility : Icons.visibility_off,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}

Widget buildSocialLoginButton(String imageAsset, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.contcolor1,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          imageAsset,
          height: 30,
          width: 30,
        ),
      ),
    ),
  );
}
