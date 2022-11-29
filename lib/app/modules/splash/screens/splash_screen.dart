import 'dart:async';

import 'package:flutter/material.dart';
import '../../../shared/colors_default.dart';
import '../controllers/splash_controller.dart';
import '../components/title_splash_component.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Modular.get<SplashController>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() => controller.value = .9);
      Timer(const Duration(seconds: 3), () => Modular.to.navigate("/steps/"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDefault.white,
      body: Center(
        child: AnimatedScale(
          duration: const Duration(seconds: 4),
          scale: controller.value,
          curve: Curves.fastLinearToSlowEaseIn,
          child: AnimatedContainer(
            duration: const Duration(seconds: 5),
            height: MediaQuery.of(context).size.height * .14,
            width: MediaQuery.of(context).size.width * .45,
            curve: Curves.easeInBack,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    "assets/images/logo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                TitleSplashComponent(
                  title: "e",
                  fontSize: 30,
                  color: ColorsDefault.greenDark,
                ),
                TitleSplashComponent(
                  title: "-Farma",  
                  fontSize: 20,
                  color: ColorsDefault.black,
                )
              ]
            )
          ),
        ),
      ),
    );
  }
}