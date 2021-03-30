import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonRoutePage {
  navigatorPop(BuildContext context) {
    Navigator.pop(context);
  }


  static goToScreen(BuildContext context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
