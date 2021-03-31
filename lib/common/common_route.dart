import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/Page/Worker_screen/getting_started_page/getting_started_page1.dart';
import 'package:kinoverse/Page/Worker_screen/getting_started_page/getting_started_page2.dart';
import 'package:kinoverse/Page/Worker_screen/login_page/login.dart';
import 'package:kinoverse/Page/Worker_screen/sign_up/sign_up.dart';
import 'package:kinoverse/Page/Worker_screen/sign_up/sign_up_2.dart';

class CommonRoutePage {
  navigatorPop(BuildContext context) {
    Navigator.pop(context);
  }

  ///Worker Route
  gotoSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUp(),
      ),
    );
  }
  gotoWorkerSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WorkerSignUp(),
      ),
    );
  }
  gotoLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }
  gotoGettingStartedPage1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GettingStartedPage1(),
      ),
    );
  }
  gotoGettingStartedPage2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GettingStartedPage2(),
      ),
    );
  }




  static goToScreen(BuildContext context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
