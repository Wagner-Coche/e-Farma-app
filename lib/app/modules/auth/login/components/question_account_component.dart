import 'package:e_farma/app/modules/auth/login/controllers/login_controller.dart';
import 'package:e_farma/app/services/auth_service_imp.dart';
import 'package:flutter/material.dart';

import '../../../../shared/font_style.dart';
import '../../../../shared/colors_default.dart';
import '../../../../shared/widgets/button_start_widget.dart';

class QuestionAccountComponent extends StatelessWidget {
  const QuestionAccountComponent({super.key, required this.controller, required this.formKey});

  final LoginController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .01),
        child: Column(
          children: [
            ButtonStartWidget(
              title: "Entrar",
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  AuthServiceImp().loginUser(
                    email: controller.emailController.value.text, 
                    password: controller.passwordController.value.text, 
                    context: context
                  );
                }
              }
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .005),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Não tem uma conta?",
                  style: FontStyle.custom.copyWith(
                    color: ColorsDefault.black,
                    fontSize: MediaQuery.of(context).size.height * .015,
                  ),
                ),
                TextButton(
                  onPressed: () => controller.goToStepRegisterScreen(),
                  child: Text(
                    "Criar agora",
                    style: FontStyle.custom.copyWith(
                      color: ColorsDefault.greenDark,
                      fontSize: MediaQuery.of(context).size.height * .015,
                    ),
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}