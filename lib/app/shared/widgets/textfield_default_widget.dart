import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_farma/app/shared/font_style.dart';
import 'package:e_farma/app/shared/colors_default.dart';

class TextFieldDefaultWidget extends StatelessWidget {
  TextFieldDefaultWidget({
    super.key, 
    required this.hintText, 
    required this.obscureText, 
    required this.controller,
    required this.validator,
    this.suffixIcon,
    this.textInputFormatter,
    this.textInputType
  });

  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? textInputFormatter;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .06
      ),
      child: TextFormField(
        cursorColor: ColorsDefault.greenDark,
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        inputFormatters: textInputFormatter,
        keyboardType: textInputType,
        style: FontStyle.custom.copyWith(
          color: ColorsDefault.greenDark,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: FontStyle.custom.copyWith(
            fontSize: MediaQuery.of(context).size.height * .019,
            color: ColorsDefault.grey,
            fontWeight: FontWeight.w400
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * .03),
            child: suffixIcon,
          ),
          contentPadding: EdgeInsets.all(MediaQuery.of(context).size.height * .028),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: ColorsDefault.greenDark,
              width: MediaQuery.of(context).size.width * .0055
            )
          )
        ),
      ),
    );
  }
}