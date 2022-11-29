import 'package:e_farma/app/modules/auth/register/controllers/register_controler.dart';
import 'package:flutter/material.dart';

import '../../../../shared/font_style.dart';
import '../../../../shared/colors_default.dart';

class RowAccountQuestionComponent extends StatelessWidget {
  const RowAccountQuestionComponent({Key? key, required this.controller, required this.onPressed}) : super(key: key);

  final RegisterController controller;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Já possui uma conta?",
          style: FontStyle.custom.copyWith(
            color: ColorsDefault.black,
            fontSize: MediaQuery.of(context).size.height * .015,
          ),
        ),
        TextButton(
          onPressed: onPressed, 
          child: Text(
            "Entrar agora",
            style: FontStyle.custom.copyWith(
              color: ColorsDefault.greenDark,
              fontSize: MediaQuery.of(context).size.height * .015,
            ),
          )
        )
      ],
    );
  }
}