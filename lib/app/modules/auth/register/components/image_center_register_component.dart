import 'package:flutter/material.dart';

import 'description_text_component.dart';

class ImageCenterRegisterComponent extends StatelessWidget {
  const ImageCenterRegisterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .60,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * .008
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .03
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: MediaQuery.of(context).size.height * .0,
                  right: MediaQuery.of(context).size.width * .17,
                  child: Image.asset(
                    "assets/images/Ellipse 8 (1).png",
                    width: MediaQuery.of(context).size.width * .9,
                  )
                ),
                Image.asset(
                  "assets/images/yo89g 1 (2).png"
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .18,
                  left: MediaQuery.of(context).size.width * .03,
                  child: Image.asset(
                    "assets/images/Ellipse 9 (1).png",
                    width: MediaQuery.of(context).size.width * .9,
                  ),
                ),
              ],
            ),
          ),
          const DescriptionTextComponent(
            title: "Crie já a sua conta",
            subTitle:"Encontre os fármacos que procura de forma rápida e sem complicações",
          ),
        ]
      )
    );
  }
}