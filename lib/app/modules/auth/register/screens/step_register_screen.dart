import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/register_controler.dart';
import '../components/button_next_component.dart';
import '../../../../shared/widgets/logo_widget.dart';
import '../components/image_center_register_component.dart';

class StepRegisterScreen extends StatelessWidget {
  const StepRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<RegisterController>();
    
    return Scaffold(
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
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
              child: const LogoWidget()
            ),
            const ImageCenterRegisterComponent(),
            ButtonNextComponent(controller: controller)
          ],
        ),
      ),
    );
  }
}