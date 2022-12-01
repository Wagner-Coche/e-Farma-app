import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/colors_default.dart';
import '../../../shared/widgets/button_next_step_widget.dart';
import '../../../shared/widgets/step_text_button_widget.dart';
import '../controllers/third_step_controller/third_step_controller.dart';
import '../components/third_step_components/image_center_third_step_component.dart';

class ThirdStepScreen extends StatelessWidget {
  const ThirdStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ThirdStepController>();

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
                const ImageCenterThirdStepComponent(),
                ButtonNextStepWidget(
                  onPressed: () => controller.goToFourthStepScreen()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}