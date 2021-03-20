import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class HireSignUp extends StatefulWidget {
  @override
  _HireSignUpState createState() => _HireSignUpState();
}

class _HireSignUpState extends State<HireSignUp> {
  bool check1 = false;
  bool check2 = false;

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 60),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    App.logo,
                    width: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.3500,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: btnColor, width: 1),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextStyleRes.textStyleFont1(
                          textColor: txtColor,
                          text: StringRes.completeFreeAccountSetup,
                          fontSize: 16.0),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, right: 2),
                            child: CircleAvatar(
                              backgroundColor: btnBorderWhite,
                              radius: 20,
                              child: Center(
                                  child: Image.asset(
                                App.gallary,
                                height: 20,
                                width: 20,
                              )),
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: TextFormField(
                                cursorColor: txtColor,
                                style: TextStyle(
                                  fontFamily: App.font1,
                                  color: txtColor,
                                  fontSize: 13,
                                ),
                                decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 10,
                                      bottom: 11,
                                      top: 11,
                                    ),
                                    hintText: "youremailaddress@gmail.com",
                                    hintStyle: TextStyle(
                                      fontFamily: App.font1,
                                      color: txtColor,
                                      fontSize: 13,
                                    )),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30),
                        child: Container(
                          height: 58,
                          width: MediaQuery.of(context).size.width - 10,
                          decoration: BoxDecoration(
                            color: bgColor,
                            boxShadow: [
                              BoxShadow(
                                  color: shadowColorBlack,
                                  spreadRadius: 1,
                                  blurRadius: 6)
                            ],
                          ),
                          child: ExpansionTile(
                            leading: Container(
                                height: 20, child: Image.asset(App.vactor)),
                            title: TextStyleRes.textStyleFont1(
                                textColor: txtColor,
                                textAlign: TextAlign.left,
                                fontSize: 12,
                                text: StringRes.indonesia),
                            trailing: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: txtColor,
                              size: 20,
                            ),
                            backgroundColor: bgColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextStyleRes.textUbuntuStyleFont2(
                          text: StringRes.iWantTo, fontSize: 12),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonWidget.squareButton(
                            containerColor: btnColor,
                            fontSize: 12.0,
                            height: 40.0,
                            width: 100.0,
                            text: StringRes.hire,
                            textColor: txtColor,
                            onTap: () {},
                          ),
                          CommonWidget.squareButton(
                            containerColor: txtColor,
                            fontSize: 12.0,
                            height: 40.0,
                            width: 100.0,
                            text: StringRes.work,
                            textColor: colorBlack,
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 300,
                        child: CheckboxListTile(
                          title: TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: StringRes.sendMeUsefulEmail,
                          ),
                          value: check1,
                          onChanged: (newValue) {
                            check1 = newValue;
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          //  <-- leading Checkbox
                          activeColor: btnColor,
                        ),
                      ),
                      Container(
                        width: 300,
                        color: backContainerColor,
                        child: CheckboxListTile(
                          title: TextStyleRes.textUbuntuStyleFont2(
                            fontSize: 12,
                            text: StringRes.privacyPolicyAgreement,
                          ),
                          value: check2,
                          onChanged: (newValue) {
                            check2 = newValue;
                          },
                          activeColor: btnColor,
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CommonWidget.squareButton(
                        text: StringRes.createAccount,
                        fontSize: 14.0,
                        height: 40.0,
                        width: 200.0,
                        containerColor: btnColor,
                        textColor: txtColor,
                        onTap: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
