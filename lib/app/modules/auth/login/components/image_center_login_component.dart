import 'package:flutter/material.dart';

import 'description_text_component.dart';
import '../../../../shared/widgets/logo_widget.dart';

class ImageCenterLoginComponent extends StatelessWidget {
  const ImageCenterLoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(      
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .052, 
        bottom: MediaQuery.of(context).size.height * .04
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .04),
            child: const LogoWidget(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: MediaQuery.of(context).size.height * .0,
                  left: MediaQuery.of(context).size.width * .22,
                  child: Image.asset(
                    "assets/images/Ellipse 8(4).png",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .197,
                  ),
                ),
                Image.asset(
                  "assets/images/Agrupar 1 1.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .25,
                ),
                Positioned( 
                  top: MediaQuery.of(context).size.height * .04,
                  left: MediaQuery.of(context).size.width * .53,
                  child: Image.asset(
                    "assets/images/Ellipse 9.png",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .03,
            ),
            child: const DescriptionTextComponent(),
          )
        ],
      ),
    );
  }
}

//const DescriptionTextComponent()