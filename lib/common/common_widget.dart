import 'package:flutter/material.dart';

import '../app.dart';
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

  static backButton({setState(), toggle}) {
    return GestureDetector(
      onTap: () {
        setState();
      },
      child: Container(
          //  width: 100,
          decoration: BoxDecoration(
            color: toggle != 1 ? btnColor : bgColor,
            border: Border.all(color: btnColor),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_outlined,
                  color: colorWhite,
                  size: 10,
                ),
                SizedBox(width: 5),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Back",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
              ],
            ),
          )),
    );
  }

  static nextButton(setState(), toggle) {
    return GestureDetector(
      onTap: () {
        setState();
      },
      child: Container(
        decoration: BoxDecoration(
          color: toggle != 0 ? btnColor : bgColor,
          boxShadow: [
            BoxShadow(
              color: toggle != 0 ? Colors.black : btnColor,
              blurRadius: toggle != 0 ? 3 : 0,
            ),
          ],
          border: Border.all(color: btnColor),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 17, right: 17, top: 10, bottom: 10),
          child: TextStyleRes.textUbuntuStyleFont2(
              fontSize: 10,
              text: "Next",
              fontWeight: FontWeight.bold,
              textColor: colorWhite),
        ),
      ),
    );
  }

  static projectViewContainer(context, {value, widget, button}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: btnColor),
        ),
        height: getDeviceHeight(context) / 6,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 6, right: 6),
                  child: widget),
            ),
            button
          ],
        ),
      ),
    );
  }
}
