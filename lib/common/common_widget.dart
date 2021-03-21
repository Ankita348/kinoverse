import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/common/StringRes.dart';

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

  static textField(context, {text, controller, textColor, fontSize}) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 20,
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

  static darkStraightContainer(
      {color, imageName, textAfterImage, dollarString, extratext}) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
        child: Row(
          children: [
            Container(
              child: Image.asset(
                imageName,
                height: 20,
                width: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                text: textAfterImage, fontSize: 12, textColor: txtColor),
            SizedBox(
              width: 4,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                text: extratext == null ? "" : extratext,
                fontSize: 10,
                textColor: txtDescriptionColor),
            Spacer(),
            TextStyleRes.textUbuntuStyleFont2(
                text: dollarString, fontSize: 12, textColor: txtColor),
          ],
        ),
      ),
    );
  }

  static activeButton() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: btnColor)),
      height: 26,
      width: 80,
      child: Center(
        child: TextStyleRes.textUbuntuStyleFont2(
            text: StringRes.Active,
            fontSize: 12,
            textColor: txtDescriptionColor),
      ),
    );
  }
}
