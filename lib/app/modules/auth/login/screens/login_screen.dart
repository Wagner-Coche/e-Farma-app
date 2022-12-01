import 'package:e_farma/app/validation/textfields_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/login_controller.dart';
import '../../../../shared/colors_default.dart';
import '../components/question_account_component.dart';
import '../components/image_center_login_component.dart';
import '../components/reset_password_text_component.dart';
import '../../../../shared/widgets/textfield_default_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TextFieldsValidation {
  final formKey = GlobalKey<FormState>();
  final controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const ImageCenterLoginComponent(),
                TextFieldDefaultWidget(
                  hintText: "Email",
                  obscureText: false,
                  controller: controller.emailController,
                  validator: emailValidator,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                TextFieldDefaultWidget(
                  hintText: "Password",
                  controller: controller.passwordController,
                  validator: passwordValidator,
                  obscureText: controller.passwordVisible,
                  suffixIcon: GestureDetector(
                    child: controller.passwordVisible ?
                      Icon(Icons.visibility_off_rounded, color: ColorsDefault.grey,) :
                      Icon(Icons.visibility_rounded, color: ColorsDefault.grey),
                    onTap: () {
                      setState(() {
                        controller.passwordVisible = !(controller.passwordVisible);
                      });
                    },
                  ),
                ),
                const ResetPasswordTextComponent(),
                QuestionAccountComponent(
                  controller: controller,
                  formKey: formKey,
                )
              ],
            ),
          ),
        ),  
      ),
    );
  }
}