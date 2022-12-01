import 'package:flutter/material.dart';
import 'package:e_farma/app/modules/auth/register/controllers/register_controler.dart';

import '../../../../shared/widgets/button_start_widget.dart';
import 'row_account_question_component.dart';

class ButtonRegisterComponent extends StatelessWidget {
  const ButtonRegisterComponent({super.key, required this.formKey, required this.controller});

  final RegisterController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .02,
        bottom: MediaQuery.of(context).size.height * .02
      ),
      child: Column(
        children: [
          ButtonStartWidget(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                controller.goToOTPScreen();
              }
            },
            title: "Entrar",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .004,),
          RowAccountQuestionComponent(
            controller: controller,
            onPressed: () => controller.goToLoginScreen()
          )
        ],
      ),
    );
  }
}