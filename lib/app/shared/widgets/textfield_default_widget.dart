import 'package:e_farma/app/shared/colors_default.dart';
import 'package:e_farma/app/shared/font_style.dart';
import 'package:flutter/material.dart';

class TextFieldDefaultWidget extends StatelessWidget {
  const TextFieldDefaultWidget({
    super.key, 
    required this.hintText, 
    required this.obscureText, 
    this.suffixIcon
  });

  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .06
      ),
      child: TextFormField(
        cursorColor: ColorsDefault.greenDark,
        obscureText: obscureText,
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