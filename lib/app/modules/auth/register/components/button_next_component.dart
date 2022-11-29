import 'package:flutter/material.dart';

import '../controllers/register_controler.dart';
import '../../../../shared/colors_default.dart';

class ButtonNextComponent extends StatelessWidget {
  const ButtonNextComponent({Key? key, required this.controller}) : super(key: key);

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width * .18,
      child: ElevatedButton(
        onPressed: () => controller.goToRegisterScreen(),
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(seconds: 2),
          backgroundColor: ColorsDefault.greenDark,
          foregroundColor: ColorsDefault.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        ),
        child: Icon(
          Icons.arrow_forward_rounded, 
          color: ColorsDefault.white,
        )
      ),
    );
  }
}