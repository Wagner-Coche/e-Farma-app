import 'package:flutter/material.dart';
import '../../../shared/font_style.dart';

class TitleSplashComponent extends StatelessWidget {
  const TitleSplashComponent({
    Key? key, 
    required this.title, 
    required this.color, 
    required this.fontSize
  }) : super(key: key);

  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: FontStyle.custom.copyWith(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}