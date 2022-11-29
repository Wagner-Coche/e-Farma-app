import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/register_controler.dart';
import '../../../../shared/colors_default.dart';
import '../../../../shared/widgets/logo_widget.dart';
import '../../../../shared/widgets/button_start_widget.dart';
import '../../register/components/description_text_component.dart';
import '../../../../shared/widgets/textfield_single_otp_widget.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<RegisterController>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: ColorsDefault.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .052,
          bottom: MediaQuery.of(context).size.height * .04
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
                  child: const LogoWidget()
                ),
                const DescriptionTextComponent(
                  title: "Só mais uma coisa",
                  subTitle: "Enviámos um código de 6 dígitos para o seu número para confirmar a criação da conta",
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .045),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TextFieldSingleOTPWidget(),
                    TextFieldSingleOTPWidget(),
                    TextFieldSingleOTPWidget(),
                    TextFieldSingleOTPWidget()
                  ],
                )
              ],
            ),
            ButtonStartWidget(
              onPressed: () => controller.goToHomeScreen(),
              title: "Criar",
            ),
          ]
        ),
      ),
    );
  }
}