import 'package:flutter/material.dart';

import '../app.dart';

class TextStyleRes{
  static  textStyleFont1({text,double fontSize,textAlign,textColor}){
    return Text(
     text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: App.font1,
        color: textColor,
        fontSize:fontSize,
      ),
    );
  }
  static  textUbuntuStyleFont2({text,double fontSize,textColor}){
    return Text(
      text,
      style: TextStyle(
        fontFamily: App.font2,
        color: textColor,
        fontSize:fontSize,
      ),
    );
  }
}