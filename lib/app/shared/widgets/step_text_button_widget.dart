import 'package:flutter/material.dart';

import '../../shared/font_style.dart';
import '../../shared/colors_default.dart';

class StepTextButtonWidget extends StatelessWidget {
  const StepTextButtonWidget({super.key, required this.text, this.onTap});

  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: onTap, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              text,
              style: FontStyle.custom.copyWith(
                fontSize: MediaQuery.of(context).size.height * .025,
                color: ColorsDefault.black
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .010),
            Icon(
              Icons.arrow_forward_rounded, 
              size: MediaQuery.of(context).size.height * .03,
              color: ColorsDefault.black,
            )
          ],
        )
      ),
    );
  }
}