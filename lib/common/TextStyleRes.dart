import 'package:flutter/material.dart';

import '../app.dart';

class TextStyleRes {
  static textStyleFont1({text, double fontSize, textAlign, textColor}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: App.font1,
        color: textColor,
        fontSize: fontSize,
      ),
    );
  }

  static textUbuntuStyleFont2(
      {text,
      double fontSize,
      textColor,
      fontWeight,
      maxLine,
      textAlign,
      decoration,
      height}) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          decoration: decoration,
          height: height,
          fontFamily: App.font2,
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
