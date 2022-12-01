import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_controler.g.dart';

class RegisterController = RegisterControllerBase with _$RegisterController;

abstract class RegisterControllerBase with Store {
  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController numberController = TextEditingController();

  @observable
  TextEditingController passowrdController = TextEditingController();

  @observable
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> goToRegisterScreen() async {
    Modular.to.navigate("register");
  }

  Future<void> goToOTPScreen() async {
    Modular.to.navigate("otp");
  }

  Future<void> goToLoginScreen() async {
    Modular.to.navigate("/auth/");
  }

  Future<void> goToHomeScreen() async {
    Modular.to.navigate("/main/");
  }
}