import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:e_farma/app/validation/textfields_validation.dart';

import '../controllers/register_controler.dart';
import '../../../../shared/widgets/logo_widget.dart';
import '../components/button_register_component.dart';
import '../components/description_text_component.dart';
import '../../../../shared/widgets/textfield_default_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with TextFieldsValidation {
  final formKey = GlobalKey<FormState>();
  final controller = Modular.get<RegisterController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .052),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const LogoWidget(),
                const DescriptionTextComponent(
                  title: "Crie já a sua conta", 
                  subTitle: "Entre com os seus dados para continuar."
                ),
                TextFieldDefaultWidget(
                  hintText: "Seu nome",
                  obscureText: false,
                  controller: controller.nameController,
                  validator: fieldValidator,
                ),
                TextFieldDefaultWidget(
                  hintText: "Seu email",
                  obscureText: false,
                  controller: controller.emailController,
                  validator: emailValidator,
                  textInputType: TextInputType.emailAddress,
                ),
                TextFieldDefaultWidget(
                  hintText: "Nº de telefone",
                  obscureText: false,
                  controller: controller.numberController,
                  validator: phoneNumberValidator,
                  textInputFormatter: [LengthLimitingTextInputFormatter(9)],
                  textInputType: TextInputType.number,
                ),
                TextFieldDefaultWidget(
                  hintText: "Crie uma senha",
                  obscureText: false,
                  controller: controller.passowrdController,
                  validator: passwordValidator,
                ),
                TextFieldDefaultWidget(
                  hintText: "Confirmar senha",
                  obscureText: false,
                  controller: controller.confirmPasswordController,
                  validator: passwordValidator,
                ),
                ButtonRegisterComponent(
                  controller: controller,
                  formKey: formKey,
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}