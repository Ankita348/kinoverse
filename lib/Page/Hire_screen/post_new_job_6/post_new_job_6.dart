import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';
import 'package:kinoverse/common/custom_expansiontile.dart' as custom;

class PostNewJob6 extends StatefulWidget {
  final Function callback;
  PostNewJob6(this.callback);
  @override
  _PostNewJob6State createState() => _PostNewJob6State();
}

class _PostNewJob6State extends State<PostNewJob6> {
  final TextEditingController hourRangeController1 = TextEditingController();
  final TextEditingController hourRangeController2 = TextEditingController();
  int toggle = 1;
  int _value = 1;
  int value = 1;
  int value1 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonWidget.backButton(
                setState: () {
                  setState(() {
                    toggle = 0;
                  });
                  widget.callback(103);
                },
                toggle: toggle),
            CommonWidget.nextButton(() {
              setState(() {
                toggle = 1;
              });
              widget.callback(105);
            }, toggle)
          ],
        ),
      ),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 15.0, left: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "English Level",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              expansionTileView1(),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "How would you like to pay your freelancer or agency?",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              projectBtnView(),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 14),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    text: "Set your own hourly range",
                    textColor: colorWhite),
              ),
              Row(
                children: [
                  Container(
                    height: getDeviceHeight(context) / 20,
                    width: getDeviceWidth(context) / 4.5,
                    decoration: BoxDecoration(
                        border: Border.all(color: btnBorderWhite)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              text: "\$",
                              textColor: btnBorderWhite),
                          Spacer(),
                          Container(
                            width: 40,
                            child: TextField(
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontFamily: App.font2,
                                  fontSize: 14,
                                  color: colorWhite),
                              controller: hourRangeController1,
                              decoration: InputDecoration(
                                  filled: true,
                                  border: InputBorder.none,
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      fontFamily: App.font2,
                                      fontSize: 14,
                                      color: colorWhite),
                                  contentPadding: EdgeInsets.only(bottom: 12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  TextStyleRes.textUbuntuStyleFont2(
                      textColor: btnBorderWhite, fontSize: 14, text: "/hour"),
                  SizedBox(width: 8),
                  TextStyleRes.textUbuntuStyleFont2(
                      textColor: colorWhite, fontSize: 14, text: "to"),
                  SizedBox(width: 8),
                  Container(
                    height: getDeviceHeight(context) / 20,
                    width: getDeviceWidth(context) / 4.5,
                    decoration: BoxDecoration(
                        border: Border.all(color: btnBorderWhite)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              text: "\$",
                              textColor: btnBorderWhite),
                          Spacer(),
                          Container(
                            width: 40,
                            child: TextField(
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontFamily: App.font2,
                                  fontSize: 14,
                                  color: colorWhite),
                              controller: hourRangeController1,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      fontFamily: App.font2,
                                      fontSize: 14,
                                      color: colorWhite),
                                  contentPadding: EdgeInsets.only(bottom: 12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  TextStyleRes.textUbuntuStyleFont2(
                      textColor: btnBorderWhite, fontSize: 14, text: "/hour"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    text: "How long do you expect this project to last?",
                    textColor: colorWhite),
              ),
              expansionTileView2(),
            ],
          ),
        ),
      ),
    );
  }

  projectBtnView() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonWidget.projectViewContainer(
            context,
            widget: Column(
              children: [
                Image.asset(
                  App.payByHour,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 4),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Pay by the hour",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 4),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 5,
                    text: "Pay by hourly to easily scale up & down.",
                    fontWeight: FontWeight.bold,
                    textColor: btnBorderWhite),
              ],
            ),
            button: GestureDetector(
              onTap: () {
                setState(() {
                  value = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(border: Border.all(color: btnColor)),
                  child: value == 1
                      ? Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            color: btnColor,
                          ),
                        )
                      : SizedBox(),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          CommonWidget.projectViewContainer(
            context,
            widget: Column(
              children: [
                Image.asset(
                  App.fixedPrice,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 4),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Pay a fixed pricer",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 4),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 5,
                    text:
                        "Define payment before work begins & pay only when work is delivered.",
                    fontWeight: FontWeight.bold,
                    textColor: btnBorderWhite),
              ],
            ),
            button: GestureDetector(
              onTap: () {
                setState(() {
                  value = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(border: Border.all(color: btnColor)),
                  child: value == 1
                      ? Center(
                          child: Container(
                            height: 10,
                            width: 10,
                            color: btnColor,
                          ),
                        )
                      : SizedBox(),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: getDeviceHeight(context) / 6,
            ),
          )
        ],
      ),
    );
  }

  selectedItem1() {
    if (_value == 1) {
      return "Any Level";
    } else if (_value == 2) {
      return "Conversational or better";
    } else if (_value == 3) {
      return "Fluent or better";
    } else if (_value == 4) {
      return "Native or billingual only";
    }
  }

  selectedItem2() {
    if (value1 == 1) {
      return "More than 6 months";
    } else if (value1 == 2) {
      return "3 to 6 months";
    } else if (value1 == 3) {
      return "1 to 3 months";
    } else if (value1 == 4) {
      return "Less than 1 month";
    }
  }

  expansionTileView1() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8, right: 120),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: custom.ExpansionTile(
              headerBackgroundColor: bgColor,
              iconColor: btnBorderWhite,
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: selectedItem1(),
                  textColor: btnBorderWhite),
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: _value == 1
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _value = 1;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: _value == 1
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "Any Level",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 2
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _value = 2;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: _value == 2
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "Conversational or better",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 3
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _value = 3;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: _value == 3
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "Fluent or better",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 4
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _value = 4;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: _value == 4
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "Native or billingual only",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 4),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, right: 8.0),
                                child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: btnColor,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 13,
                                        color: colorWhite,
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 4, right: 8),
                              child: TextStyleRes.textUbuntuStyleFont2(
                                  fontSize: 10,
                                  text: "Add other languages",
                                  textColor: colorWhite),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  expansionTileView2() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8, right: 120),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: custom.ExpansionTile(
              headerBackgroundColor: bgColor,
              iconColor: btnBorderWhite,
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: selectedItem2(),
                  textColor: btnBorderWhite),
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: value1 == 1
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value1 = 1;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: value1 == 1
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "More than 6 months",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: value1 == 2
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value1 = 2;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: value1 == 2
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "3 to 6 months",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: value1 == 3
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value1 = 3;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: value1 == 3
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "1 to 3 months",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: value1 == 4
                            ? backContainerColor
                            : Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value1 = 4;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: btnColor)),
                                    child: value1 == 4
                                        ? Center(
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              color: btnColor,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 4, right: 8),
                                child: TextStyleRes.textUbuntuStyleFont2(
                                    fontSize: 10,
                                    text: "Less than 1 month",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
