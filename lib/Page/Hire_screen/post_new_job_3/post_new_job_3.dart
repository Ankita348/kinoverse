import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class PostNewJob3 extends StatefulWidget {
  final Function callback;

  PostNewJob3(this.callback);
  @override
  _PostNewJob3State createState() => _PostNewJob3State();
}

class _PostNewJob3State extends State<PostNewJob3> {
  final TextEditingController jobController = TextEditingController();
  int toggle = 1;
  int _value = 1;
  int value = 1;
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
                  widget.callback(100);
                },
                toggle: toggle),
            CommonWidget.nextButton(() {
              setState(() {
                toggle = 1;
              });
              widget.callback(102);
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
                  text: "What type of project do you have?",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              projectBtnView(),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: new TextSpan(
                    text: 'Screening Questions',
                    style: TextStyle(
                        fontFamily: App.font2, fontSize: 10, color: colorWhite),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' (Optional)',
                          style: TextStyle(
                              fontFamily: App.font2,
                              fontSize: 10,
                              color: btnBorderWhite)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text:
                        "Add screening questions and/or require a cover letter",
                    textColor: colorWhite),
              ),
              expansionTileView()
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
                Image.asset(
                  App.oneTimeProjectIcon,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "One Time Project",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 2,
                    text: "Find the right skills for a short-term need.",
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
                Image.asset(
                  App.ongoingIcon,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "On Going Project",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 2,
                    text: "Find skilled resource for an extended engagement.",
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
              children: [
                Image.asset(
                  App.complexProjectIcon,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Complex Project",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 2,
                    text: "Find experts & agencies for large projects.",
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

  expansionTileView() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 8),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: ExpansionTile(
              trailing: Container(
                color: btnBorderWhite,
                height: 1,
                width: 15,
              ),
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "Add Questions",
                  textColor: btnBorderWhite),
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      jobTextField(),
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
                            text: "Selected from our suggested questions:",
                            textColor: colorWhite),
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
                                    text:
                                        "Do you have any question about the job descirption?",
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
                                    text:
                                        "Do you have any question about the job descirption?",
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
                                    text:
                                        "Do you have any question about the job descirption?",
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
                                    text:
                                        "Do you have any question about the job descirption?",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 8
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
                                    _value = 8;
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
                                    child: _value == 8
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
                                    text:
                                        "Do you have any question about the job descirption?",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 9
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
                                    _value = 9;
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
                                    child: _value == 9
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
                                    text:
                                        "Do you have any question about the job descirption?",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 10
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
                                    _value = 10;
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
                                    child: _value == 10
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
                                    text:
                                        "Do you have any question about the job descirption?",
                                    textColor: colorWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _value == 11
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
                                    _value = 11;
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
                                    child: _value == 11
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
                                    text:
                                        "Do you have any question about the job descirption?",
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

  jobTextField() {
    return Container(
      color: backContainerColor,
      height: getDeviceHeight(context) / 23,
      child: TextField(
        style:
            TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
        controller: jobController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Create your own question...",
          hintStyle:
              TextStyle(fontFamily: App.font2, fontSize: 10, color: colorWhite),
          contentPadding: const EdgeInsets.only(left: 8.0, bottom: 18.0),
        ),
      ),
    );
  }
}
