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
  List<String> items = List<String>.generate(7, (index) {
    return "Item - $index";
  });
  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
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
            // width: getDeviceWidth(context) - 40,
            child: ListView.builder(
                itemCount: items.length,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10.0, bottom: 6, left: 10, top: 10),
                        child: GestureDetector(
                          onTap: () {
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
                              color: _selectedIndex != null &&
                                      _selectedIndex == index
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
                                            right: 8.0,
                                            bottom: 10,
                                            left: 8,
                                            top: 8),
                                        child:
                                            TextStyleRes.textUbuntuStyleFont2(
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
                                            child: TextStyleRes
                                                .textUbuntuStyleFont2(
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
                                            child: TextStyleRes
                                                .textUbuntuStyleFont2(
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
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            print("items lenght--->${items.length}");
                                            if(_selectedIndex==index){
                                              items.removeAt(index);
                                              print("remove--->index:- $_selectedIndex --->length:-${items.length}");
                                            }

                                          });
                                        },
                                        child: Container(
                                          child: Image.asset(
                                            App.delete,
                                            height: 19,
                                            width: 13,
                                            color: txtDescriptionColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: txtDescriptionColor,
                        thickness: 0.2,
                        height: 2,
                      ),
                    ],
                  );
                }),
          ),
          Divider(
            color: txtDescriptionColor,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 20.0, bottom: 6, left: 20, top: 10),
            child: Container(
              height: getDeviceHeight(context) / 10,
                          child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0,
                              bottom: 10,
                              left: 8,
                              top: 8),
                          child:
                          TextStyleRes.textUbuntuStyleFont2(
                            maxLine: 2,
                            fontSize: 10,
                            textColor: txtColor,
                            text:"A security question has been added or changed to your account",

                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 8,
                              ),
                              child: TextStyleRes
                                  .textUbuntuStyleFont2(
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
                              child: TextStyleRes
                                  .textUbuntuStyleFont2(
                                fontSize: 10,
                                textColor: btnColor,
                                text: "Kinoverse",
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
                        GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                            child: Image.asset(
                              App.delete,
                              height: 19,
                              width: 13,
                              color: txtDescriptionColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
