import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';
import 'package:kinoverse/common/custom_expansiontile.dart' as custom;

class PostNewJob4 extends StatefulWidget {
  final Function callback;
  PostNewJob4(this.callback);
  @override
  _PostNewJob4State createState() => _PostNewJob4State();
}

class _PostNewJob4State extends State<PostNewJob4> {
  final TextEditingController jobController = TextEditingController();
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
                  widget.callback(101);
                },
                toggle: toggle),
            CommonWidget.nextButton(() {
              setState(() {
                toggle = 1;
              });
              widget.callback(103);
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
                  text: "What level of experience should your freelancer have?",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              projectBtnView(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    text:
                        "What skills & expertise are most important to you in Editing?",
                    textColor: colorWhite),
              ),
              expansionTileView1(),
              expansionTileView2()
            ],
          ),
        ),
      ),
    );
  }

  projectBtnView() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonWidget.projectViewContainer(
            context,
            widget: Column(
              children: [
                SizedBox(height: 20),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Entry Level",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 4,
                    text: "Looking for someone relatively new to this field",
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
            value: value,
            widget: Column(
              children: [
                SizedBox(height: 20),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Intermediate",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 4,
                    text: "Looking for substancial experience in this field",
                    fontWeight: FontWeight.bold,
                    textColor: btnBorderWhite),
              ],
            ),
            button: GestureDetector(
              onTap: () {
                setState(() {
                  value = 2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(border: Border.all(color: btnColor)),
                  child: value == 2
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
            value: value,
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Expert",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 4,
                    text:
                        "Looking for comprehensive & deep expertise to this field",
                    fontWeight: FontWeight.bold,
                    textColor: btnBorderWhite),
              ],
            ),
            button: GestureDetector(
              onTap: () {
                setState(() {
                  value = 3;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(border: Border.all(color: btnColor)),
                  child: value == 3
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
          )
        ],
      ),
    );
  }

  selectedItem1() {
    if (_value == 1) {
      return "Mid-Editing";
    } else if (_value == 2) {
      return "Post - Editing";
    } else {
      return "Editing Platform";
    }
  }

  selectedItem2() {
    if (value1 == 1) {
      return "Adobe Premiere";
    } else if (value1 == 2) {
      return "Final Cut Pro";
    } else {
      return "Editing Software";
    }
  }

  expansionTileView1() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: custom.ExpansionTile(
              headerBackgroundColor: bgColor,
              iconColor: btnBorderWhite,
              trailing: Container(
                color: btnBorderWhite,
                height: 1,
                width: 15,
              ),
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: selectedItem1(),
                  textColor: btnBorderWhite),
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      jobTextField1(),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 10, text: "Or", textColor: colorWhite),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                        child: TextStyleRes.textUbuntuStyleFont2(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            text: "Selected from our suggested platforms:",
                            textColor: colorWhite),
                      ),
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
                                    text: "Mid-Editing",
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
                                    text: "Post - Editingx`",
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

  expansionTileView2() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: custom.ExpansionTile(
              headerBackgroundColor: bgColor,
              iconColor: btnBorderWhite,
              trailing: Container(
                color: btnBorderWhite,
                height: 1,
                width: 15,
              ),
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: selectedItem2(),
                  textColor: btnBorderWhite),
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      jobTextField2(),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: TextStyleRes.textUbuntuStyleFont2(
                              fontSize: 10, text: "Or", textColor: colorWhite),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                        child: TextStyleRes.textUbuntuStyleFont2(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            text: "Selected from our suggested platforms:",
                            textColor: colorWhite),
                      ),
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
                                    text: "Adobe Premiere",
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
                                    text: "Final Cut Pro",
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

  jobTextField1() {
    return Container(
      color: backContainerColor,
      height: getDeviceHeight(context) / 23,
      child: TextField(
        style:
            TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
        controller: jobController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Create your own platform...",
          hintStyle:
              TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
          contentPadding: const EdgeInsets.only(left: 8.0, bottom: 18.0),
        ),
      ),
    );
  }

  jobTextField2() {
    return Container(
      color: backContainerColor,
      height: getDeviceHeight(context) / 23,
      child: TextField(
        style:
            TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
        controller: jobController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Create your own Software...",
          hintStyle:
              TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
          contentPadding: const EdgeInsets.only(left: 8.0, bottom: 18.0),
        ),
      ),
    );
  }
}
