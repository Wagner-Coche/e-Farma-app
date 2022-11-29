import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .15,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/logo.jpg"),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}