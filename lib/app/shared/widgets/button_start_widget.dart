import 'package:flutter/material.dart';
import 'package:e_farma/app/shared/font_style.dart';
import 'package:e_farma/app/shared/colors_default.dart';

class ButtonStartWidget extends StatelessWidget {
  const ButtonStartWidget({super.key, required this.onPressed, required this.title});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .7,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(seconds: 2),
          backgroundColor: ColorsDefault.greenDark,
          foregroundColor: ColorsDefault.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(42)
          )
        ),
        child: Text(
          title,
          style: FontStyle.custom.copyWith(
            color: ColorsDefault.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }
}