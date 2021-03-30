import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';
import 'package:kinoverse/common/custom_expansiontile.dart' as custom;

class PostNewJob1 extends StatefulWidget {
  final Function callback;
  PostNewJob1(this.callback);
  @override
  _PostNewJob1State createState() => _PostNewJob1State();
}

class _PostNewJob1State extends State<PostNewJob1> {
  final TextEditingController jobController = TextEditingController();
  int _value = 1;
  int toggle = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 15.0, left: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "Enter the name of your job post",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              jobTextField(),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Here are some good examples:",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
              ),
              exampleText(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    text: "Job Category",
                    textColor: colorWhite),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextStyleRes.textUbuntuStyleFont2(
                    maxLine: 2,
                    fontSize: 10,
                    text:
                        "Let’s categorize your job, which help us personalize your job details and match your job to relevant freelancers and agencies.",
                    textColor: colorWhite),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    text: "Here are some suggestions based on your job title:",
                    textColor: colorWhite),
              ),
              categoryDropDown()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonWidget.backButton(
                setState: () {
                  setState(() {
                    toggle = 0;
                  });
                  widget.callback(1);
                },
                toggle: toggle),
            CommonWidget.nextButton(() {
              setState(() {
                toggle = 1;
              });
              widget.callback(100);
            }, toggle)
          ],
        ),
      ),
    );
  }

  jobTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: backContainerColor,
        height: getDeviceHeight(context) / 22,
        child: TextField(
          style:
              TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
          controller: jobController,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  exampleText() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: btnBorderWhite,
                height: 1,
                width: 10,
              ),
              SizedBox(width: 2),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text:
                      "The Production House needs multiple Scriptwriters for multiple titles.",
                  textColor: btnBorderWhite),
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Container(
                color: btnBorderWhite,
                height: 1,
                width: 10,
              ),
              SizedBox(width: 2),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "Editing some video content for the Youtube channel",
                  textColor: btnBorderWhite),
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Container(
                color: btnBorderWhite,
                height: 1,
                width: 10,
              ),
              SizedBox(width: 2),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "Requires a video bumper for the Company Profile",
                  textColor: btnBorderWhite),
            ],
          )
        ],
      ),
    );
  }

  selectedItem() {
    if (_value == 1) {
      return "Scripwriter";
    } else if (_value == 2) {
      return "Director";
    } else if (_value == 3) {
      return "Business or Youtube Video";
    } else if (_value == 4) {
      return "Costume Designer";
    } else if (_value == 5) {
      return "Editor";
    } else if (_value == 6) {
      return "Actors";
    } else if (_value == 7) {
      return "Other";
    } else {
      return "Select some of the categories provided";
    }
  }

  categoryDropDown() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 60),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: custom.ExpansionTile(
              headerBackgroundColor: bgColor,
              iconColor: btnBorderWhite,
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: selectedItem(),
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
                                    text: "Scripwriter",
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
                                    text: "Director",
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
                                    text: "Business or Youtube Video",
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
                                    text: "Costume Designer",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 5
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
                                    _value = 5;
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
                                    child: _value == 5
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
                                    text: "Editor",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 6
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
                                    _value = 6;
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
                                    child: _value == 6
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
                                    text: "Actors",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 7
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
                                    _value = 7;
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
                                    child: _value == 7
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
                                    text: "Other",
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
