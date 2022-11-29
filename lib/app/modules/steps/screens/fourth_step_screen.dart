import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/colors_default.dart';
import '../../../shared/widgets/button_start_widget.dart';
import '../controllers/fourth_step_controller/fourth_step_controller.dart';
import '../components/fourth_step_components/image_center_fourth_step_component.dart';


class FourthStepScreen extends StatelessWidget {
  const FourthStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<FourthStepController>();

    return Scaffold(
      backgroundColor: ColorsDefault.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:  EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .04,
            right: MediaQuery.of(context).size.width * .04,
            left: MediaQuery.of(context).size.width * .04,
            bottom: MediaQuery.of(context).size.height * .04
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const ImageCenterFourthStepComponent(),
                ButtonStartWidget(
                  title: "Começar",
                  onPressed: () => controller.goToLoginScreen()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}