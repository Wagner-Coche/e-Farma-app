import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors_default.dart';

class TextFieldSingleOTPWidget extends StatelessWidget {
  const TextFieldSingleOTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .15,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        cursorColor: ColorsDefault.greenDark,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height * .04,
          color: ColorsDefault.greenDark,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: "0",
          hintStyle: TextStyle(
            color: ColorsDefault.grey.withOpacity(.4),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .03
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: ColorsDefault.greenDark,
              width: MediaQuery.of(context).size.width * .0055
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: ColorsDefault.blue,
              width: MediaQuery.of(context).size.width * .0055
            )
          )
        ),
      )
    );
  }
}