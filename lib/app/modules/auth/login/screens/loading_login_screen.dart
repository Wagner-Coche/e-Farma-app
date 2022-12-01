import 'package:e_farma/app/shared/colors_default.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoadingLoginScreen extends StatefulWidget {
  const LoadingLoginScreen({super.key, required this.user});

  final User? user;

  @override
  State<LoadingLoginScreen> createState() => _LoadingLoginScreenState();
}

class _LoadingLoginScreenState extends State<LoadingLoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Modular.to.navigate("/main/", arguments: widget.user);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDefault.white,
      body: Center(
        child: CircularProgressIndicator(
          color: ColorsDefault.greenDark,
          strokeWidth: 4,
        ),
      ),
    );
  }
}