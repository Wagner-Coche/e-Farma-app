import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/register_controler.dart';
import '../components/description_text_component.dart';
import '../../../../shared/widgets/logo_widget.dart';
import '../components/row_account_question_component.dart';
import '../../../../shared/widgets/button_start_widget.dart';
import '../../../../shared/widgets/textfield_default_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<RegisterController>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .052),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const LogoWidget(),
              const DescriptionTextComponent(
                title: "Crie já a sua conta", 
                subTitle: "Entre com os seus dados para continuar."
              ),
              const TextFieldDefaultWidget(
                hintText: "Seu nome",
                obscureText: false,
              ),
              const TextFieldDefaultWidget(
                hintText: "Seu email",
                obscureText: false,
              ),
              const TextFieldDefaultWidget(
                hintText: "Nº de telefone",
                obscureText: false,
              ),
              const TextFieldDefaultWidget(
                hintText: "Crie uma senha",
                obscureText: false,
              ),
              const TextFieldDefaultWidget(
                hintText: "Confirmar senha",
                obscureText: false,
              ),
              Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
                child: Column(
                  children: [
                    ButtonStartWidget(
                      onPressed: () => controller.goToOTPScreen(),
                      title: "Entrar",
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .004,),
                    RowAccountQuestionComponent(
                      controller: controller,
                      onPressed: () => controller.goToLoginScreen()
                    )
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}