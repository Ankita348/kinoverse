import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';

import '../../app.dart';

class HireYourNotification extends StatefulWidget {
  @override
  _HireYourNotificationState createState() => _HireYourNotificationState();
}

class _HireYourNotificationState extends State<HireYourNotification> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                right: 10.0, bottom: 6, left: 10, top: 10),
            child: Row(
              children: [
                Image.asset(
                  App.calendaricon,
                  height: 20,
                  width: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 12,
                    textColor: txtDescriptionColor,
                    text: "March 20, 2021"),
                Spacer(),
                TextStyleRes.textUbuntuStyleFont2(
                    fontSize: 12,
                    textColor: txtColor,
                    text: "1 " + StringRes.newNotification),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  App.notification,
                  height: 14,
                  width: 14.24,
                  color: txtDescriptionColor,
                ),
              ],
            ),
          ),
          Divider(
            color: txtDescriptionColor,
            thickness: 1,
          ),
          Container(
            height: getDeviceHeight(context) / 2.5,
            width: getDeviceWidth(context) - 40,
            child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0, bottom: 6, left: 10, top: 10),
                    child: GestureDetector(
                      onTap: (){
                       setState(() {
                         _selectedIndex = index;
                       });
                      },

                      //pass index value to '_isSelected'
                      child: Container(
                        height: getDeviceHeight(context) / 10,
                        width: getDeviceWidth(context) - 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: _selectedIndex != null && _selectedIndex == index
                              ? btnColor
                              : bgColor,
                        )),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8.0, bottom: 10, left: 8, top: 8),
                                    child: TextStyleRes.textUbuntuStyleFont2(
                                      maxLine: 2,
                                      fontSize: 10,
                                      textColor: txtColor,
                                      text: StringRes.PostProduction,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 8.0,
                                          left: 8,
                                        ),
                                        child: TextStyleRes.textUbuntuStyleFont2(
                                          fontSize: 10,
                                          textColor: txtDescriptionColor,
                                          text: StringRes.from,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 8.0,
                                          left: 8,
                                        ),
                                        child: TextStyleRes.textUbuntuStyleFont2(
                                          fontSize: 10,
                                          textColor: btnColor,
                                          text: "Michael Jordan",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    App.notification,
                                    height: 19,
                                    width: 13,
                                    color: txtDescriptionColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    App.delete,
                                    height: 19,
                                    width: 13,
                                    color: txtDescriptionColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            color: txtDescriptionColor,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 10.0, bottom: 6, left: 10, top: 10),
            child: Container(
              height: getDeviceHeight(context) / 10,
              width: getDeviceWidth(context) - 20,
              // decoration: BoxDecoration(border: Border.all(color: btnColor)),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, bottom: 10, left: 8, top: 8),
                          child: TextStyleRes.textUbuntuStyleFont2(
                            maxLine: 2,
                            fontSize: 10,
                            textColor: txtColor,
                            text: StringRes.PostProduction,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 8,
                              ),
                              child: TextStyleRes.textUbuntuStyleFont2(
                                fontSize: 10,
                                textColor: txtDescriptionColor,
                                text: StringRes.from,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 8,
                              ),
                              child: TextStyleRes.textUbuntuStyleFont2(
                                fontSize: 10,
                                textColor: btnColor,
                                text: "Michael Jordan",
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          App.notification,
                          height: 19,
                          width: 13,
                          color: txtDescriptionColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          App.delete,
                          height: 19,
                          width: 13,
                          color: txtDescriptionColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
