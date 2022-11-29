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

class _LoginScreenState extends State<LoginScreen> {
  final controller = Modular.get<LoginController>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const ImageCenterLoginComponent(),
                const TextFieldDefaultWidget(
                  hintText: "Seu nome",
                  obscureText: false,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                TextFieldDefaultWidget(
                  hintText: "Password",
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
                QuestionAccountComponent(controller: controller)
              ],
            ),
          ),  
        ),
      ),
    );
  }
}