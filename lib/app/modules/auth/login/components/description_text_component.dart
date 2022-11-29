import 'package:flutter/material.dart';

import '../../../../shared/font_style.dart';
import '../../../../shared/colors_default.dart';

class DescriptionTextComponent extends StatelessWidget {
  const DescriptionTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          "Entre Agora!",
          style: FontStyle.inter.copyWith(
            color: ColorsDefault.blue,
            fontSize: MediaQuery.of(context).size.height * .05,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "Entre com os seus dados para continuar",
          style: FontStyle.inter.copyWith(
            color: Colors.grey,
            fontSize: MediaQuery.of(context).size.height * .0167,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}