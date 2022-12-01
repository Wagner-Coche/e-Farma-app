import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  bool passwordVisible = true;

  Future<void> goToStepRegisterScreen() async {
    Modular.to.navigate("step_register");
  }

  Future<void> goToHomeScreen() async {
    Modular.to.navigate("/main/");
  }

}