import 'package:flutter/material.dart';

bool isLight = true;

class App {
  static const font1 = "Courier Prime";
  static const font2 = "Ubuntu";

  static const root = 'assets/image/';
  static const logo = '$root' + 'logo.png';
  static const landing1 = '$root' + 'landing1.png';
  static const landing2 = '$root' + 'landing2.jpg';
  static const landing3 = '$root' + 'landing3.jpg';
  static const gallary = '$root' + 'gallary.png';
  static const vactor = '$root' + 'Vector.png';
  static const edit = '$root' + 'edit.png';
  static const notification = '$root' + 'notification.png';
  static const search = '$root' + 'search.png';
  static const filter = '$root' + 'filter.png';
  static const delete = '$root' + 'delete.png';
  static const badge = '$root' + 'badge icon.png';
  static const closeicon = '$root' + 'close icon.png';
  static const fav = '$root' + 'fav.png';
  static const inviteTojob = '$root' + 'inviteTojob.png';
  static const jobsuccess = '$root' + 'jobsuccess.png';
  static const subscribe = '$root' + 'subscribe.png';

  static const addIcon = '$root' + 'add icon.png';
  static const location = '$root' + 'location.png';
  static const calendaricon = '$root' + 'calendaricon.png';
  static const profile = '$root' + 'profile.png';

  static const messages = '$root' + 'messages.png';
  static const jobs = '$root' + 'jobs.png';
  static const talent = '$root' + 'talent.png';
  static const alert = '$root' + 'alert.png';
  static const drawerIcon = '$root' + 'drawerIcon.png';
  static const Attachment = '$root' + 'Attachment Icon.png';
  static const sendMesg= '$root' + 'send_message.png';
  static const voiceCall = '$root' + 'Voice Call.png';

  static const uploadIcon = '$root' + 'uploadicon.png';
  static const ongoingIcon = '$root' + 'ongoingicon.png';
  static const oneTimeProjectIcon = '$root' + 'onetimeprojecticon.png';
  static const complexProjectIcon = '$root' + 'complexprojecticon.png';
  static const freelancer = '$root' + 'freelancer.png';
  static const moreFreelancer = '$root' + 'morefreelancer.png';


  static const paypal = '$root' + 'paypal.png';
  static const depositIcon = '$root' + 'depositIcon.png';
  static const dabitIcon = '$root' + 'dabitIcon.png';
  static const bankAccountimg = '$root' + 'bankAcountimg.png';
  static const addic = '$root' + 'add_ic.png';
  static const total = '$root' + 'total.png';
  static const charge = '$root' + 'charge.png';
  static const PayPalLogo = '$root' + 'PayPal-Logo 1.png';
  static const Mastercard = '$root' + 'Mastercard-logo 1.png';
  static const Payoneer = '$root' + 'Payoneer-Logo 1.png';
  static const cil_bank = '$root' + 'cil_bank.png';
  static const fixedPrice = '$root' + 'fixedprice.png';
  static const payByHour = '$root' + 'paybyhour.png';
  static const addPeopleIcon = '$root' + 'addpeopleicon.png';
  static const closeIcon = '$root' + 'closeIcon.png';
  static const communityIcon = '$root' + 'communityIcon.png';
  static const covidIcon = '$root' + 'covidIcon.png';
  static const helpIcon = '$root' + 'helpIcon.png';
  static const lawIcon = '$root' + 'disputeIcon.png';
  static const reportIcon = '$root' + 'reportIcon.png';
  static const settingIcon = '$root' + 'settingIcon.png';
  static const statesIcon = '$root' + 'statesIcon.png';
  static const supportIcon = '$root' + 'supportIcon.png';
  static const switchIcon = '$root' + 'switchIcon.png';
  static const linkIcon = '$root' + 'linkIcon.png';
  static const logoutIcon = '$root' + 'logoutIcon.png';
  static const profileIcon = '$root' + 'profileIcon.png';


  static Route createRoute({Widget page}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.fastLinearToSlowEaseIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

getColorIcon() {
  if (isLight) {
    return getColorPrimary();
  } else {
    return Colors.white;
  }
}

Color bgColor = Color(0x00ff3E4346);
Color btnColor = Color(0x00ffA60000);
Color txtColor = Color(0x00ffF5F5F5);
Color txtDescriptionColor = Color(0x00ff929292);
Color colorWhite = Color(0x00ffF7F7FA);
Color btnBorderWhite = Color(0x00ff929292);
Color shadowColorBlack = Color(0xFF343739);
Color blackText = Color(0xFF3E4345);
Color blueGray = Color(0xFF383D3F);

Color backContainerColor = Color(0xFF2B2F30);

Color colorBrown = Colors.brown;
Color colorTextPara = Color(0x00ff73777F);
Color colorAppSignUp = Color.fromRGBO(94, 93, 200, 1);
Color colorBgTextField = Color.fromRGBO(245, 245, 245, 1);
Color colorAppTheme = Color.fromRGBO(58, 77, 219, 1);
Color colorBlack = Color(0x00ff000000);
Color colorSelectedMenu = Colors.green[300];
Map<int, Color> colorMat = {
  50: Color.fromRGBO(65, 20, 139, .1),
  100: Color.fromRGBO(65, 20, 139, .2),
  200: Color.fromRGBO(65, 20, 139, .3),
  300: Color.fromRGBO(65, 20, 139, .4),
  400: Color.fromRGBO(65, 20, 139, .5),
  500: Color.fromRGBO(65, 20, 139, .6),
  600: Color.fromRGBO(65, 20, 139, .7),
  700: Color.fromRGBO(65, 20, 139, .8),
  800: Color.fromRGBO(65, 20, 139, .9),
  900: Color.fromRGBO(65, 20, 139, 1),
};

getColorPrimary() {
  if (isLight) {
    return MaterialColor(0x00ff3E4346, colorMat);
  } else {
    return Colors.green;
  }
}

getColorBorder() {
  if (isLight) {
    return Colors.green;
  } else {
    return Colors.green;
  }
}

getColorBg() {
  if (isLight) {
    return Color(0x00ffFFF9F9);
  } else {
    return Color(0x00ffFFF9F9);
  }
}

getMatColorBg() {
  if (isLight) {
    return Colors.white;
  } else {
    return Colors.white;
  }
}

Route createRoute({Widget page}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.fastLinearToSlowEaseIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

getDeviceHeight(context) {
  return MediaQuery.of(context).size.height;
}

getDeviceWidth(context) {
  return MediaQuery.of(context).size.width;
}
