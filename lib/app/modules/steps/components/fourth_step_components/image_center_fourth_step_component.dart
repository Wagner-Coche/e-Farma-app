import 'package:flutter/material.dart';

import '../../../../shared/widgets/text_description_widget.dart';

class ImageCenterFourthStepComponent extends StatelessWidget {
  const ImageCenterFourthStepComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .2),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .09, 
              bottom: MediaQuery.of(context).size.height * .02
            ),
            child: Image.asset(
              "assets/images/Ellipse 7(4).png",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * .16,
            ),
          ),
          const TextDescriptionWidget(
            description: "Encontre os produtos farmacêuticos que precisa a qualquer hora"
          )
        ],
      ),
    );
  }
}