import 'package:flutter/material.dart';

import '../../../../shared/font_style.dart';
import '../../../../shared/colors_default.dart';

class DescriptionTextComponent extends StatelessWidget {
  const DescriptionTextComponent({Key? key, required this.title, required this.subTitle}) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .03, 
        bottom: MediaQuery.of(context).size.height * .02
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: FontStyle.inter.copyWith(
              color: ColorsDefault.blue,
              fontSize: MediaQuery.of(context).size.height * .04,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * .01
            ),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: FontStyle.custom.copyWith(
                color: Colors.grey,
                fontSize: MediaQuery.of(context).size.height * .0185,
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      )
    );
  }
}