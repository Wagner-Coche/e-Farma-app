import 'package:flutter/material.dart';

import '../../shared/font_style.dart';
import '../../shared/colors_default.dart';

class TextDescriptionWidget extends StatelessWidget {
  const TextDescriptionWidget({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .025),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: FontStyle.custom.copyWith(
          color: ColorsDefault.black,
          fontSize: MediaQuery.of(context).size.height * .02
        ),
      ),
    );
  }
}