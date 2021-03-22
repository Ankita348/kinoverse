import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class PostNewJob5 extends StatefulWidget {
  final Function callback;
  PostNewJob5(this.callback);
  @override
  _PostNewJob5State createState() => _PostNewJob5State();
}

class _PostNewJob5State extends State<PostNewJob5> {
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
                  widget.callback(102);
                },
                toggle: toggle),
            CommonWidget.nextButton(() {
              setState(() {
                toggle = 1;
              });
              widget.callback(104);
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
                  text: "Who can see your job?",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              projectBtnView1(),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "How many people do you need for this job?",
                  fontWeight: FontWeight.bold,
                  textColor: colorWhite),
              projectBtnView2(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    text: "Talent Type",
                    textColor: colorWhite),
              ),
              expansionTileView(),
            ],
          ),
        ),
      ),
    );
  }

  projectBtnView1() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonWidget.projectViewContainer(
            context,
            widget: Column(
              children: [
                SizedBox(height: 15),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Anyone ",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 5,
                    text:
                        "Freelancers or Agencies using Kinoverse and public search engine can find this job.",
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
                SizedBox(height: 20),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 2,
                    textAlign: TextAlign.center,
                    text: "Only Kinoverse Talent",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 5,
                    text: "Only Kinoverse users can find this job.",
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
            widget: Column(
              children: [
                SizedBox(height: 20),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Invite-Only",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                SizedBox(height: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    maxLine: 5,
                    text:
                        "Only freelancers or agencies you have invited can find this job.",
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
          ),
        ],
      ),
    );
  }

  projectBtnView2() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonWidget.projectViewContainer(
            context,
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  App.freelancer,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 8),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "One freelancer",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
              ],
            ),
            button: GestureDetector(
              onTap: () {
                setState(() {
                  value1 = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(border: Border.all(color: btnColor)),
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
          ),
          SizedBox(width: 10),
          CommonWidget.projectViewContainer(
            context,
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  App.moreFreelancer,
                  height: 20,
                  width: 20,
                ),
                SizedBox(height: 8),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 2,
                    textAlign: TextAlign.center,
                    text: "More than one freelancer",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
              ],
            ),
            button: GestureDetector(
              onTap: () {
                setState(() {
                  value1 = 2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration:
                      BoxDecoration(border: Border.all(color: btnColor)),
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

  expansionTileView() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8, right: 120),
      child: Container(
          decoration: BoxDecoration(border: Border.all(color: btnBorderWhite)),
          child: ListTileTheme(
            dense: true,
            child: ExpansionTile(
              title: TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "No Preference",
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
                                    text: "No Preference",
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
                                    text: "Freelancer",
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
                                    text: "Agency",
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
