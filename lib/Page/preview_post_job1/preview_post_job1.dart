import 'package:flutter/material.dart';
import 'package:kinoverse/Page/preview_post_job_2/preview_post_job_2.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_route.dart';
import 'package:kinoverse/common/common_widget.dart';

class PreviewPostJob1 extends StatefulWidget {
  @override
  _PreviewPostJob1State createState() => _PreviewPostJob1State();
}

class _PreviewPostJob1State extends State<PreviewPostJob1> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(child: CommonWidget.drawer(context)),
      backgroundColor: bgColor,
      appBar: CommonWidget.hireAppbar(
        context,
        "Preview Post Job",
        () {
          return scaffoldKey.currentState.openDrawer();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              title(),
              description(),
              details(),
              screeningQuestions(),
              expertise(),
              Container(
                width: getDeviceWidth(context),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 15.0, top: 25, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        CommonRoutePage.goToScreen(context, PreviewPostJob2());
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
                              text: "Next",
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
    );
  }

  title() {
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
                    text: "Title",
                    fontWeight: FontWeight.bold,
                    textColor: btnBorderWhite),
                Spacer(),
                Image.asset(App.edit, height: 18, width: 18),
              ],
            ),
            SizedBox(height: 5),
            TextStyleRes.textUbuntuStyleFont2(
                fontSize: 10,
                text: "Need video editor for our Youtube Channel",
                textColor: colorWhite),
            SizedBox(height: 6),
            TextStyleRes.textUbuntuStyleFont2(
                fontSize: 12,
                text: "Job Category",
                fontWeight: FontWeight.bold,
                textColor: btnBorderWhite),
            SizedBox(height: 5),
            TextStyleRes.textUbuntuStyleFont2(
                fontSize: 10,
                text: "Editor - Post Editing",
                textColor: colorWhite),
          ],
        ),
      ),
    );
  }

  description() {
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
                      text: "Description",
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
                    height: 1.2,
                    text:
                        "We need experienced videographers for our youtube channel. Our youtube content is about a kind of blog for culinary travels. Very good at Adobe Premiere and Adobe After Effects",
                    textColor: colorWhite),
              )
            ],
          ),
        ),
      ),
    );
  }

  details() {
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
                      text: "Details",
                      fontWeight: FontWeight.bold,
                      textColor: btnBorderWhite),
                  Spacer(),
                  Image.asset(App.edit, height: 18, width: 18),
                ],
              ),
              SizedBox(height: 5),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10, text: "Contract", textColor: colorWhite),
              SizedBox(height: 5),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text: "More than 6 Months",
                  textColor: colorWhite),
            ],
          ),
        ),
      ),
    );
  }

  screeningQuestions() {
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
                      text: "Screening Questions",
                      fontWeight: FontWeight.bold,
                      textColor: btnBorderWhite),
                  Spacer(),
                  Image.asset(App.edit, height: 18, width: 18),
                ],
              ),
              SizedBox(height: 5),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10,
                  text:
                      "Do you have suggestions to make this project run successfully?",
                  textColor: colorWhite),
              SizedBox(height: 6),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 12,
                  text: "Require Cover Letter",
                  fontWeight: FontWeight.bold,
                  textColor: btnBorderWhite),
              SizedBox(height: 5),
              TextStyleRes.textUbuntuStyleFont2(
                  fontSize: 10, text: "Yes", textColor: colorWhite),
            ],
          ),
        ),
      ),
    );
  }

  expertise() {
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
                      text: "Expertise",
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
                    text: "Editing Platforms",
                    textColor: btnBorderWhite),
              ),
              Row(
                children: [
                  commonButton("Editor"),
                  SizedBox(width: 5),
                  commonButton("Editing"),
                  SizedBox(width: 5),
                  commonButton("Post-Editing"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 8, top: 10),
                child: TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    maxLine: 3,
                    text: "Editing Software",
                    textColor: btnBorderWhite),
              ),
              Row(
                children: [
                  commonButton("Adobe Premiere"),
                  SizedBox(width: 5),
                  commonButton("After Effects"),
                ],
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
