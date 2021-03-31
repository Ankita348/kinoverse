import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  TextEditingController loginUserEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  bool _obscureTextLogin = true;

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
      child: newText(context),
    );
  }

  Widget newText(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: btnColor, width: 1),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(height: screenSize.height * 0.05),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: Container(
                height: screenSize.height * 0.07,
                width: screenSize.width * 5,
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: 
                    
                    TextFormField(
                      validator: (val) => val.isEmpty || !val.contains("@")
                          ? "enter a valid eamil"
                          : null,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      controller: loginUserEmailController,
                      cursorColor: btnBorderWhite,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide:
                              BorderSide(width: 1, color: btnBorderWhite),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide:
                              BorderSide(width: 1, color: btnBorderWhite),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide:
                              BorderSide(width: 1, color: btnBorderWhite),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide: BorderSide(
                              width: 1,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide:
                                BorderSide(width: 1, color: btnBorderWhite)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide:
                                BorderSide(width: 1, color: btnBorderWhite)),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: btnBorderWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),

                        suffixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 0),
                          child: Image.asset(App.Useremail,
                              height: 20, color: btnBorderWhite),
                        ),
                      )
                      ),
                    ),
                  ),
                ),
              ),

            SizedBox(height: screenSize.height * 0.05),

            Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: Container(
                height: screenSize.height * 0.07,
                width: screenSize.width * 5,
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: TextFormField(
                      validator: (val) => val.isEmpty
                          ? "enter a valid password"
                          : null,
                      obscureText: _obscureTextLogin,
                      style: TextStyle(color: Colors.white),
                      controller: loginPasswordController,
                      cursorColor: btnBorderWhite,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide:
                          BorderSide(width: 1, color: btnBorderWhite),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide:
                          BorderSide(width: 1, color: btnBorderWhite),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide:
                          BorderSide(width: 1, color: btnBorderWhite),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide: BorderSide(
                              width: 1,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide:
                            BorderSide(width: 1, color: btnBorderWhite)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide:
                            BorderSide(width: 1, color: btnBorderWhite)),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: btnBorderWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),

                        suffixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 7),
                          child: Image.asset(App.Password,
                              //fit: BoxFit.cover,
                              width: 10,
                              height: 10, color: btnBorderWhite),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenSize.height * 0.07),

                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: MaterialButton(
                    height: screenSize.height * 0.07,
                    minWidth: MediaQuery.of(context).size.width,
                    elevation: 5,
                    color:btnColor,
                    textColor: Colors.white,
                    child: Text(
                      'LogIn',
                      textScaleFactor: 1.2,
                    ),

                    onPressed: () {
                    },
                  ),
                ),
            SizedBox(height: 30),
            /* Container(
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
                      padding: EdgeInsets.only(left: 10),
                      child: TextStyleRes.textStyleFont1(
                          textColor: txtColor,
                          text: StringRes.EnterEmail,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

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
            SizedBox(height: 37),
            GestureDetector(
              onTap: () {
                CommonRoutePage().gotoSignUp2(context);
              },
              child: Container(
                height: 41,
                decoration: BoxDecoration(
                  color: btnColor,
                ),
                child: Center(
                  child: TextStyleRes.textStyleFont1(
                      textColor: txtColor,
                      text: StringRes.logIn,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 30),*/
          ],
        ),
      ),
    );
  }
}
