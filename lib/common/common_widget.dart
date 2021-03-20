import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app.dart';
import 'StringRes.dart';
import 'TextStyleRes.dart';

class CommonWidget {
  static squareButton(
      {containerColor, height, width, text, textColor, fontSize, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: containerColor,
          height: height,
          width: width,
          child: Center(
            child: TextStyleRes.textStyleFont1(
                textColor: textColor, fontSize: fontSize, text: text),
          )),
    );
  }

  static textField(context, {text, controller, textColor, fontSize}) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height:  MediaQuery.of(context).size.height / 20,
        decoration:
            BoxDecoration(border: Border.all(color: txtDescriptionColor)),
        child: Center(
          child: TextFormField(
            controller: controller,
            cursorColor: textColor,
            style: TextStyle(
              fontFamily: App.font2,
              color: textColor,
              fontSize: fontSize,
            ),
            decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  left: 10,
                  bottom: 18,
                ),
                hintText: text,
                hintStyle: TextStyle(
                  fontFamily: App.font1,
                  color: textColor,
                  fontSize: fontSize,
                )),
          ),
        ));
  }

}
