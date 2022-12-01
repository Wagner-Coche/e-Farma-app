import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/colors_default.dart';
import '../../../shared/widgets/button_next_step_widget.dart';
import '../../../shared/widgets/step_text_button_widget.dart';
import '../components/first_step_components/image_center_component.dart';
import '../controllers/first_step_controller/first_step_controller.dart';

class FirstStepScreen extends StatelessWidget {
  const FirstStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<FirstStepController>();

    return Scaffold(
      backgroundColor: ColorsDefault.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .04,
            right: MediaQuery.of(context).size.width * .04,
            left: MediaQuery.of(context).size.width * .04
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const StepTextButtonWidget(text: "Pular"),
                const ImageCenterComponent(),
                ButtonNextStepWidget(
                  onPressed: () => controller.goToSecondStepScreen()
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}