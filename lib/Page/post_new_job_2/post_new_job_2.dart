import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class PostNewJob2 extends StatefulWidget {
  final Function callback;
  PostNewJob2(this.callback);
  @override
  _PostNewJob2State createState() => _PostNewJob2State();
}

class _PostNewJob2State extends State<PostNewJob2> {
  final TextEditingController jobController = TextEditingController();
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
                    text: "A good description includes:",
                    fontWeight: FontWeight.bold,
                    textColor: colorWhite),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: TextStyleRes.textUbuntuStyleFont2(
                      fontSize: 10,
                      text: "Here are some good examples:",
                      fontWeight: FontWeight.bold,
                      textColor: colorWhite),
                ),
                exampleText(),
                jobTextField(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextStyleRes.textUbuntuStyleFont2(
                        fontSize: 8,
                        text: "5000 characters left.",
                        textColor: btnBorderWhite),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextStyleRes.textUbuntuStyleFont2(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      text: "Additional Project Files",
                      textColor: colorWhite),
                ),
                uploadProject(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: RichText(
                    text: new TextSpan(
                      text: 'You may attach up to 5 file under',
                      style: TextStyle(
                          fontFamily: App.font2,
                          fontSize: 8,
                          color: btnBorderWhite),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' 100 MB',
                            style: TextStyle(
                                fontFamily: App.font2,
                                fontSize: 8,
                                color: colorWhite)),
                        TextSpan(
                            text: ' each.',
                            style: TextStyle(
                                fontFamily: App.font2, color: btnBorderWhite))
                      ],
                    ),
                  ),
                ),
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
                    widget.callback(101);
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
        height: getDeviceHeight(context) / 7,
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

  uploadProject() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
          width: getDeviceWidth(context) / 2,
          decoration: BoxDecoration(
            border: Border.all(
                color: btnBorderWhite, style: BorderStyle.solid, width: 0.80),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  App.uploadIcon,
                  height: 23,
                  width: 23,
                ),
                SizedBox(width: 10),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 10,
                    text: "Upload Project Files",
                    textColor: btnBorderWhite),
              ],
            ),
          )),
    );
  }
}
