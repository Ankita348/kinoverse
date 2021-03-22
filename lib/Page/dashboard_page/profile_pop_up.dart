import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

const double width = 45.0;
const double height = 16.0;
const double loginAlign = -1;
const double signInAlign = 1;
Color selectedColor = btnColor;
Color normalColor = colorWhite;

class _ToggleButtonState extends State<ToggleButton> {
  double xAlign;
  Color loginColor;
  Color signInColor;
  int value = 1;

  @override
  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 45.0, right: 20),
          child: Container(
            height: 180,
            width: 210,
            color: bgColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Online",
                          fontWeight: FontWeight.bold,
                          textColor: xAlign == -1 ? btnColor : btnBorderWhite),
                      SizedBox(width: 4),
                      Container(
                        height: 20,
                        width: 1,
                        color: colorWhite,
                      ),
                      SizedBox(width: 4),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Invisible",
                          fontWeight: FontWeight.bold,
                          textColor: xAlign == 1 ? btnColor : btnBorderWhite),
                      Spacer(),
                      Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                            border: Border.all(color: btnBorderWhite)),
                        child: Stack(
                          children: [
                            AnimatedAlign(
                              alignment: Alignment(xAlign, 0),
                              duration: Duration(milliseconds: 300),
                              child: Container(
                                width: width * 0.5,
                                height: height,
                                decoration: BoxDecoration(
                                  color: btnColor,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  xAlign = loginAlign;
                                  loginColor = selectedColor;

                                  signInColor = normalColor;
                                });
                              },
                              child: Align(
                                alignment: Alignment(-1, 0),
                                child: Container(
                                  width: width * 0.5,
                                  color: Colors.transparent,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  xAlign = signInAlign;
                                  signInColor = selectedColor;

                                  loginColor = normalColor;
                                });
                              },
                              child: Align(
                                alignment: Alignment(1, 0),
                                child: Container(
                                  width: width * 0.5,
                                  color: Colors.transparent,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 1;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 1 ? backContainerColor : bgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(
                            App.profileIcon,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 10),
                          TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 10,
                              text: "Profile",
                              fontWeight: FontWeight.bold,
                              textColor: colorWhite),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 2;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 2 ? backContainerColor : bgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(
                            App.switchIcon,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 10),
                          TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 10,
                              text: "Switch Account",
                              fontWeight: FontWeight.bold,
                              textColor: colorWhite),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 3;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 3 ? backContainerColor : bgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(
                            App.logoutIcon,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 10),
                          TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 10,
                              text: "Log Out",
                              fontWeight: FontWeight.bold,
                              textColor: colorWhite),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
