import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class HireAllTabeView extends StatefulWidget {
  @override
  _HireAllTabeViewState createState() => _HireAllTabeViewState();
}

class _HireAllTabeViewState extends State<HireAllTabeView> {
  int toggle = 0;
  int toggle1 = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 8, bottom: 8, right: 8),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: getDeviceHeight(context) / 18,
                  width: getDeviceWidth(context) - 20,
                  decoration: BoxDecoration(
                      color: bgColor,
                      border: Border.all(
                        color: txtDescriptionColor,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStyleRes.textUbuntuStyleFont2(
                            text: StringRes.Posting + " (1)",
                            fontSize: 12,
                            textColor: txtColor),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: txtColor,
                          size: 18,
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: getDeviceHeight(context) / 19,
                  width: getDeviceWidth(context) - 20,
                  decoration: BoxDecoration(
                      color: bgColor,
                      border: Border.all(
                        color: txtDescriptionColor,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStyleRes.textUbuntuStyleFont2(
                            text: StringRes.Contracts + " (1)",
                            fontSize: 12,
                            textColor: txtColor),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: txtColor,
                          size: 18,
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CommonWidget.backWordWithoutIConButton(
                    txt: StringRes.Catalog,
                    setState: () {
                      setState(() {
                        toggle = 0;
                      });
                    },
                    toggle: toggle),
                SizedBox(
                  width: 10,
                ),
                CommonWidget.forwordButton(() {
                  setState(() {
                    toggle = 1;
                  });
                }, toggle, StringRes.PostaNewJob)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: getDeviceHeight(context) / 4,
              width: getDeviceWidth(context),
              decoration: BoxDecoration(
                  border: Border.all(color: txtDescriptionColor),
                  color: backContainerColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStyleRes.textUbuntuStyleFont2(
                        text: StringRes.Covid19,
                        fontSize: 12,
                        textColor: txtColor),
                    SizedBox(
                      height: 10,
                    ),
                    TextStyleRes.textUbuntuStyleFont2(
                        text: StringRes.seebusinesses,
                        maxLine: 4,
                        fontSize: 12,
                        textColor: txtColor),
                    SizedBox(
                      height: 20,
                    ),
                    CommonWidget.forwordButton(() {
                      setState(() {
                        toggle1 = 0;
                      });
                    }, toggle, StringRes.SeeJobTemplates)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
