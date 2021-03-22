import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/common/StringRes.dart';

import 'file:///D:/kinoverse/lib/Page/dashboard_page/profile_pop_up.dart';

import '../app.dart';
import 'TextStyleRes.dart';

class CommonWidget {
  static int value = 1;
  static bool onOff = true;

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

  static drawer(context, {value}) {
    return Container(
      color: btnColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 30, left: 20, right: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      App.closeIcon,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  SizedBox(width: 5),
                  TextStyleRes.textUbuntuStyleFont2(
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      text: "Close",
                      fontWeight: FontWeight.bold,
                      textColor: colorWhite),
                ],
              ),
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 1;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 1 ? backContainerColor : btnColor,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 20, right: 20),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Image.asset(
                            App.statesIcon,
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(width: 10),
                          TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 12,
                              text: "My Stats",
                              fontWeight: FontWeight.bold,
                              textColor: colorWhite),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 2;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 2 ? backContainerColor : btnColor,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          App.reportIcon,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Report",
                            fontWeight: FontWeight.bold,
                            textColor: colorWhite),
                      ],
                    ),
                  ),
                );
              },
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 3;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 3 ? backContainerColor : btnColor,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          App.lawIcon,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Disputes",
                            fontWeight: FontWeight.bold,
                            textColor: colorWhite),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            Container(
              color: Color(0xff7E0000),
              child: Column(
                children: [
                  StatefulBuilder(
                    builder: (context, setState) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            value = 4;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          color: value == 4
                              ? backContainerColor
                              : Color(0xff7E0000),
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10, left: 20, right: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                App.covidIcon,
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(width: 10),
                              TextStyleRes.textUbuntuStyleFont2(
                                  fontSize: 12,
                                  text: "Covid-19 Resources",
                                  fontWeight: FontWeight.bold,
                                  textColor: colorWhite),
                              Spacer(),
                              Image.asset(App.linkIcon, height: 18, width: 18)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            value = 5;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          color: value == 5
                              ? backContainerColor
                              : Color(0xff7E0000),
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10, left: 20, right: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                App.communityIcon,
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(width: 10),
                              TextStyleRes.textUbuntuStyleFont2(
                                  fontSize: 12,
                                  text: "Community & Forums",
                                  fontWeight: FontWeight.bold,
                                  textColor: colorWhite),
                              Spacer(),
                              Image.asset(App.linkIcon, height: 18, width: 18)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            StatefulBuilder(
              builder: (context, setState) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 6;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 6 ? backContainerColor : btnColor,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          App.helpIcon,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Help",
                            fontWeight: FontWeight.bold,
                            textColor: colorWhite),
                        Spacer(),
                        Image.asset(App.linkIcon, height: 18, width: 18)
                      ],
                    ),
                  ),
                );
              },
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 7;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 7 ? backContainerColor : btnColor,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          App.supportIcon,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Support",
                            fontWeight: FontWeight.bold,
                            textColor: colorWhite),
                        Spacer(),
                        Image.asset(App.linkIcon, height: 18, width: 18),
                      ],
                    ),
                  ),
                );
              },
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      value = 8;
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: value == 8 ? backContainerColor : btnColor,
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 20, right: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          App.settingIcon,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Settings",
                            fontWeight: FontWeight.bold,
                            textColor: colorWhite),
                      ],
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                App.logo,
                height: 140,
                width: 140,
              ),
            )
          ],
        ),
      ),
    );
  }

  static squareDarkBlueGrayButton(
      {containerColor,
      height,
      width,
      text,
      textColor,
      fontSize,
      onTap,
      descriptiontextColor,
      descriptiontextfontSize,
      descriptiontexttext}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: containerColor,
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextStyleRes.textUbuntuStyleFont2(
                    textColor: textColor, fontSize: fontSize, text: text),
                SizedBox(
                  height: 2,
                ),
                TextStyleRes.textUbuntuStyleFont2(
                    textColor: descriptiontextColor,
                    fontSize: descriptiontextfontSize,
                    text: descriptiontexttext),
              ],
            ),
          )),
    );
  }

  static squareWithIconButton(
      {containerColor,
      height,
      width,
      text,
      textColor,
      fontSize,
      onTap,
      imageName,
      borderColor,
      sizeboxWidth}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: containerColor,
              border: Border.all(
                color: borderColor,
              )),
          child: Row(
            mainAxisAlignment: imageName != null
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 4,
              ),
              imageName != null
                  ? Image.asset(
                      imageName,
                      height: 17,
                      width: 16,
                    )
                  : Container(),
              SizedBox(
                width: sizeboxWidth,
              ),
              TextStyleRes.textUbuntuStyleFont2(
                  textColor: textColor, fontSize: fontSize, text: text),
            ],
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

  static hireAppbar(context, text, drawer()) {
    return PreferredSize(
      preferredSize: Size.fromHeight(getDeviceHeight(context) * 0.11),
      child: Container(
        decoration: BoxDecoration(
          color: btnColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
            ),
          ],
        ),
        width: getDeviceWidth(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      drawer();
                    },
                    child: Image.asset(
                      App.drawerIcon,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  Text(
                    "Jobs",
                    style: TextStyle(
                        color: colorWhite,
                        fontFamily: App.font1,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ToggleButton();
                          });
                    },
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5378.jpg?size=626&ext=jpg"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 4),
                child: Text(
                  text,
                  style: TextStyle(
                      color: colorWhite,
                      fontFamily: App.font2,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static appBarJobWithTabBar(context, controller, drawer()) {
    return PreferredSize(
      preferredSize: Size.fromHeight(getDeviceHeight(context) * 0.14),
      child: Container(
        decoration: BoxDecoration(
          color: btnColor,
        ),
        width: getDeviceWidth(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        drawer();
                      },
                      child: Image.asset(
                        App.drawerIcon,
                        height: 18,
                        width: 18,
                      ),
                    ),
                    Text(
                      StringRes.Contract,
                      style:
                          TextStyle(color: colorWhite, fontFamily: App.font1),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return ToggleButton();
                            });
                      },
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5378.jpg?size=626&ext=jpg"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 36.4,
                width: getDeviceWidth(context) / 1.1,
                decoration: BoxDecoration(
                  color: btnColor,
                ),
                child: TabBar(
                  controller: controller,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      )),
                  labelColor: txtColor,
                  labelStyle: TextStyle(fontSize: 12, fontFamily: App.font2),
                  unselectedLabelColor: txtDescriptionColor,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text:"Posting"
                    ),
                    Tab(
                      text: "Contract",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static backWordButton({setState(), toggle}) {
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
                TextStyleRes.textStyleFont1(
                    fontSize: 10, text: "Back", textColor: colorWhite),
              ],
            ),
          )),
    );
  }

  static backWordWithoutIConButton({setState(), toggle, txt}) {
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
            child: TextStyleRes.textStyleFont1(
                fontSize: 10, text: txt, textColor: colorWhite),
          )),
    );
  }

  static forwordButton(setState(), toggle, text) {
    return GestureDetector(
      onTap: () {
        setState();
      },
      child: Container(
        decoration: BoxDecoration(
          color: toggle != 0 ? btnColor : bgColor,
          // boxShadow: [
          //   BoxShadow(
          //     color: toggle != 0 ? Colors.black : btnColor,
          //     blurRadius: toggle != 0 ? 3 : 0,
          //   ),
          // ],
          border: Border.all(color: btnColor),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 17, right: 17, top: 10, bottom: 10),
          child: TextStyleRes.textStyleFont1(
              fontSize: 10, text: text, textColor: colorWhite),
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
            text: StringRes.Active, fontSize: 12, textColor: txtColor),
      ),
    );
  }
}
