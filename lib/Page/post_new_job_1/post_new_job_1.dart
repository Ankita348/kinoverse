import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

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
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
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
                      text:
                          "Here are some suggestions based on your job title:",
                      textColor: colorWhite),
                ),
                categoryDropDown()
              ],
            ),
            Padding(
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
            )
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
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: getDeviceHeight(context) / 18,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          border: Border.all(
              color: btnBorderWhite, style: BorderStyle.solid, width: 0.80),
        ),
        child: Theme(
          data: ThemeData(
            canvasColor: bgColor,
          ),
          child: DropdownButton(
              focusColor: backContainerColor,
              autofocus: true,
              underline: SizedBox(),
              hint: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: selectedItem(),
                  textColor: btnBorderWhite),
              style: TextStyle(fontSize: 10, color: colorWhite),
              //  value: _value ?? Text(_value.toString()),
              items: [
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 1;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 1
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Scripwriter"),
                    ],
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 2;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 2
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Director"),
                    ],
                  ),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 3;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 3
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Business or Youtube Video"),
                    ],
                  ),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 4;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 4
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Costume Designer"),
                    ],
                  ),
                  value: 4,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 5;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 5
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Editor"),
                    ],
                  ),
                  value: 5,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 6;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 6
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Actors"),
                    ],
                  ),
                  value: 6,
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _value = 7;
                        },
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              border: Border.all(color: btnBorderWhite)),
                          child: _value == 7
                              ? Center(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: btnColor,
                                  ),
                                )
                              : SizedBox(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Other"),
                    ],
                  ),
                  value: 7,
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ),
      ),
    );
  }
}
