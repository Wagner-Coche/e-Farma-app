import 'package:flutter/material.dart';

import '../../../shared/font_style.dart';
import '../../../shared/colors_default.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDefault.white,
      body: SizedBox(
        child: Center(
          child: Text(
            "Welcome",
            style: FontStyle.custom.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}