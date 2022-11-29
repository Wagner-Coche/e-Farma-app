import 'package:flutter/material.dart';

import '../../../../shared/font_style.dart';
import '../../../../shared/colors_default.dart';

class ResetPasswordTextComponent extends StatelessWidget {
  const ResetPasswordTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .04),
      child: TextButton(
        onPressed: () {}, 
        child: Text(
          "Esqueceu a senha?",
          textAlign: TextAlign.right,
          style: FontStyle.custom.copyWith(
            color: ColorsDefault.grey,
            fontSize: MediaQuery.of(context).size.height * .0135,
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}