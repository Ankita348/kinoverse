import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_route.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 60),
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      App.logo,
                      width: MediaQuery.of(context).size.height * 0.4,
                    ),
                  ),
                  buttonRow(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonRow(context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: newText(),
    );
  }

  Widget newText() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: btnColor, width: 1),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 25),
            TextStyleRes.textStyleFont1(
                textColor: txtColor,
                text: StringRes.getFreeAccount,
                fontSize: 16.0,
                fontWeight: FontWeight.w700),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 41,
                decoration: BoxDecoration(
                  border: Border.all(color: btnColor, width: 1),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 9.5,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 1.0, color: btnColor),
                            ),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 7.5),
                          child: Center(
                            child: Image.asset(
                              App.google,
                              height: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 45),
                      child: Center(
                        child: TextStyleRes.textStyleFont1(
                            textColor: txtColor,
                            text: StringRes.continueGoogle,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'or',
              style: TextStyle(
                color: txtColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 41,
                decoration: BoxDecoration(
                  border: Border.all(color: btnBorderWhite, width: 1),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 9.5,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: 1.0, color: btnBorderWhite),
                              ),
                              color: bgColor,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 6.5),
                            child: Center(
                              child: Image.asset(
                                App.envelope,
                                color: btnBorderWhite,
                                height: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 45),
                        child: TextStyleRes.textStyleFont1(
                            textColor: txtColor,
                            text: StringRes.workAddress,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                CommonRoutePage().gotoLogin(context);
              },
              child: Container(
                height: 41,
                decoration: BoxDecoration(
                  border: Border.all(color: btnBorderWhite, width: 1),
                ),
                child: Center(
                  child:TextStyleRes.textStyleFont1(
                      textColor: txtColor,
                      text: StringRes.loginWithEmail,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 37),
            GestureDetector(
              onTap: () {
                CommonRoutePage().gotoWorkerSignUp(context);
              },
              child: Container(
                height: 41,
                decoration: BoxDecoration(
                  color: btnColor,
                ),
                child: Center(
                  child: TextStyleRes.textStyleFont1(
                      textColor: txtColor,
                      text: StringRes.continueEmail,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
