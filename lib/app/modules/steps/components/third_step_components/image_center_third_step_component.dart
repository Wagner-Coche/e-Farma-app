import 'package:flutter/material.dart';

import '../../../../shared/widgets/text_description_widget.dart';

class ImageCenterThirdStepComponent extends StatelessWidget {
  const ImageCenterThirdStepComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Positioned(
                //bottom: 32,
                // left: 74,
                bottom: MediaQuery.of(context).size.height * .028,
                left: MediaQuery.of(context).size.width * .17,
                child: Image.asset(
                  "assets/images/Ellipse 7(3).png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .13,
                ),
              ),
              Positioned(
                // top: 20,
                top: MediaQuery.of(context).size.height * .03,
                child: Image.asset(
                  "assets/images/Ellipse 8(3).png",
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.height * .33,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .08
                ),
                child: Image.asset(
                  "assets/images/comprimido.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .3,
                ),
              ),
            ]
          ),
          const TextDescriptionWidget(description: "Encontre os produtos farmacêuticos que precisa a qualquer hora",)
        ],
      ),
    );
  }
}