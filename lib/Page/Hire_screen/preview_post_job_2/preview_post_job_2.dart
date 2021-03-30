import 'package:flutter/material.dart';
import 'package:kinoverse/Page/dashboard_page/dashboard_page.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_route.dart';
import 'package:kinoverse/common/common_widget.dart';

class PreviewPostJob2 extends StatefulWidget {
  @override
  _PreviewPostJob2State createState() => _PreviewPostJob2State();
}

class _PreviewPostJob2State extends State<PreviewPostJob2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(child: CommonWidget.drawer(context)),
        backgroundColor: bgColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                experienceLevel(),
                visibility(),
                talentPreference(),
                budget(),
                coWorker(),
                Container(
                  width: getDeviceWidth(context),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          CommonRoutePage.goToScreen(
                              context, DashBoardPage(12));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: btnColor,
                            border: Border.all(color: btnColor),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 17, right: 17, top: 10, bottom: 10),
                            child: TextStyleRes.textUbuntuStyleFont2(
                                fontSize: 10,
                                text: "Post Job Now",
                                fontWeight: FontWeight.bold,
                                textColor: colorWhite),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: CommonWidget.hireAppbar(context, "Preview Post Job", () {
          _scaffoldKey.currentState.openDrawer();
        }));
  }

  experienceLevel() {
    return Container(
      color: backContainerColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 12,
                    text: "Experience Level",
                    fontWeight: FontWeight.bold,
                    textColor: btnBorderWhite),
                Spacer(),
                Image.asset(App.edit, height: 18, width: 18),
              ],
            ),
            SizedBox(height: 5),
            TextStyleRes.textUbuntuStyleFont2(
                fontSize: 10, text: "Expert", textColor: colorWhite),
          ],
        ),
      ),
    );
  }

  visibility() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        color: backContainerColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextStyleRes.textUbuntuStyleFont2(
                      fontSize: 12,
                      text: "Visibility",
                      fontWeight: FontWeight.bold,
                      textColor: btnBorderWhite),
                  Spacer(),
                  Image.asset(App.edit, height: 18, width: 18),
                ],
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 3,
                    text: "Job Posting Visibility",
                    textColor: btnBorderWhite),
              ),
              SizedBox(height: 5),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "Only Kinoverse users can find this job",
                  textColor: colorWhite),
            ],
          ),
        ),
      ),
    );
  }

  talentPreference() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        color: backContainerColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextStyleRes.textUbuntuStyleFont2(
                      fontSize: 12,
                      text: "Talent Preference",
                      fontWeight: FontWeight.bold,
                      textColor: btnBorderWhite),
                  Spacer(),
                  Image.asset(App.edit, height: 18, width: 18),
                ],
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 3,
                    text: "Talent Type",
                    textColor: btnBorderWhite),
              ),
              SizedBox(height: 5),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10, text: "Freelancer", textColor: colorWhite),
            ],
          ),
        ),
      ),
    );
  }

  budget() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        color: backContainerColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextStyleRes.textUbuntuStyleFont2(
                      fontSize: 12,
                      text: "Budget",
                      fontWeight: FontWeight.bold,
                      textColor: btnBorderWhite),
                  Spacer(),
                  Image.asset(App.edit, height: 20, width: 20),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Hourly or Fixed Price",
                          textColor: btnBorderWhite),
                      SizedBox(height: 6),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 12,
                          text: "Pay by the hours",
                          textColor: colorWhite),
                      SizedBox(height: 8),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Project Duration",
                          textColor: btnBorderWhite),
                      SizedBox(height: 5),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 12,
                          text: "More than 6 months",
                          textColor: colorWhite),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Hourly",
                          textColor: btnBorderWhite),
                      SizedBox(height: 6),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 12,
                          text: "\$35.00 - \$75.00",
                          textColor: colorWhite),
                      SizedBox(height: 8),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Time Commitment",
                          textColor: btnBorderWhite),
                      SizedBox(height: 6),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 12,
                          text: "Less than 30 hours a week",
                          textColor: colorWhite),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  coWorker() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        color: backContainerColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(App.addPeopleIcon, height: 16, width: 16),
                  SizedBox(width: 3),
                  TextStyleRes.textUbuntuStyleFont2(
                      fontSize: 12,
                      text: "Co-Worker",
                      fontWeight: FontWeight.bold,
                      textColor: btnBorderWhite),
                  Spacer(),
                  Image.asset(App.edit, height: 18, width: 18),
                ],
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 8),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 3,
                    text:
                        "Let a co-worker help you find, interview & evaluate freelancers & agencies.",
                    textColor: btnBorderWhite),
              ),
              Container(
                width: 110,
                decoration: BoxDecoration(
                  color: btnColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(App.addPeopleIcon,
                          height: 16, width: 16, color: colorWhite),
                      SizedBox(width: 4),
                      TextStyleRes.textUbuntuStyleFont2(
                          fontSize: 10,
                          text: "Add Co-Worker",
                          textColor: colorWhite),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  commonButton(text) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: colorWhite), color: bgColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 12.0, right: 12, top: 8, bottom: 8),
        child: TextStyleRes.textUbuntuStyleFont2(
            fontSize: 10, maxLine: 3, text: text, textColor: colorWhite),
      ),
    );
  }
}
