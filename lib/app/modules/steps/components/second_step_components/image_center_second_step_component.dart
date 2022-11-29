import 'package:flutter/material.dart';

import '../../../../shared/widgets/text_description_widget.dart';

class ImageCenterSecondStepComponent extends StatelessWidget {
  const ImageCenterSecondStepComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                //margin: const EdgeInsets.only(top: 70),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .1
                ),
                child: Image.asset(
                  "assets/images/Ellipse 7(2).png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .22,
                  scale: 2,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .025,
                child: Image.asset(
                  "assets/images/Ellipse 8(2).png",
                  //width: 150,
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .18,
                ),
              ),
              Positioned(
                right: 0,
                left: MediaQuery.of(context).size.width * .001,
                top: MediaQuery.of(context).size.height * .04,
                child: Image.asset(
                  "assets/images/comprimido.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .3,
                ),
              ),
            ]
          ),
          const TextDescriptionWidget(description: "Economize tempo, dinheiro e evite deslocamentos !",)
        ],
      ),
    );
  }
}