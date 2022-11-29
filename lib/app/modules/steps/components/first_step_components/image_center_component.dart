import 'package:flutter/material.dart';

import '../../../../shared/widgets/text_description_widget.dart';

class ImageCenterComponent extends StatelessWidget {
  const ImageCenterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                //margin: const EdgeInsets.only(top: 80),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .11
                ),
                child: Image.asset(
                  "assets/images/Ellipse7.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .2,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * .185,
                top: MediaQuery.of(context).size.height * .01,
                // left: 75,
                // top: 5,
                child: Image.asset(
                  "assets/images/Ellipse8.png",
                  //width: 150,
                  width: MediaQuery.of(context).size.width * .36,
                  height: MediaQuery.of(context).size.height * .15,
                  scale: .9,
                ),
              ),
              SizedBox(
                child: Image.asset(
                  "assets/images/comprimido.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .3,
                  scale: 2,
                ),
              ),
            ]
          ),
          const TextDescriptionWidget(description: "Encontre os produtos farmacêuticos que precisa a qualquer hora")
        ],
      ),
    );
  }
}