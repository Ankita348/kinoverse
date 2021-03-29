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
  int _value = 1;
  int _value1 = 1;
  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 8, bottom: 8, right: 8),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {

              },
              child: Container(
                  height: getDeviceHeight(context) / 18,
                  width: getDeviceWidth(context) - 20,
                  decoration: BoxDecoration(
                      color: bgColor,
                      border: Border.all(
                        color: txtDescriptionColor,
                      )),
                  child: Theme(
                    data: ThemeData(canvasColor: bgColor),
                    child: DropdownButton(
                        underline: SizedBox(),
                        icon: Icon(Icons.keyboard_arrow_right,color: txtColor,size: 18,),
                        hint: TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Posting (1)",
                            textColor: txtColor),
                        isExpanded: true,
                        style: TextStyle(fontSize: 12, color: txtColor),
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                "Posting (1)",
                              ),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text("Second Item"),
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Third Item"),
                          ), value: 3),
                          DropdownMenuItem(child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Fourth Item"),
                          ), value: 4)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {

              },
              child: Container(
                  height: getDeviceHeight(context) / 18,
                  width: getDeviceWidth(context) - 20,
                  decoration: BoxDecoration(
                      color: bgColor,
                      border: Border.all(
                        color: txtDescriptionColor,
                      )),
                  child: Theme(
                    data: ThemeData(canvasColor: bgColor),
                    child: DropdownButton(
                        underline: SizedBox(),
                        icon: Icon(Icons.keyboard_arrow_right,color: txtColor,size: 18,),
                        hint: TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: "Contracts (1)",
                            textColor: txtColor),
                        isExpanded: true,
                        style: TextStyle(fontSize: 12, color: txtColor),
                        value: _value1,
                        items: [
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                "Contracts (1)",
                              ),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text("Second Item"),
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Third Item"),
                          ), value: 3),
                          DropdownMenuItem(child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Fourth Item"),
                          ), value: 4)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value1 = value;
                          });
                        }),
                  )
              ),
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
