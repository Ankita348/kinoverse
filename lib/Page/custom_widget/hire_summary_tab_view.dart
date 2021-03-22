import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class HireSummaryTabView extends StatefulWidget {
  @override
  _HireSummaryTabViewState createState() => _HireSummaryTabViewState();
}

class _HireSummaryTabViewState extends State<HireSummaryTabView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    App.calendaricon,
                    color: txtDescriptionColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                TextStyleRes.textUbuntuStyleFont2(
                    text: "March 20, 2021",
                    fontSize: 12,
                    textColor: txtDescriptionColor),
                Spacer(),
                Container(
                    height: 40,
                    width: 130,
                    color: txtDescriptionColor,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.add,
                          size: 20,
                          color: bgColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextStyleRes.textUbuntuStyleFont2(
                            text: StringRes.addDeposites,
                            fontSize: 12,
                            textColor: bgColor),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CommonWidget.darkStraightContainer(
                color: backContainerColor,
                dollarString: "dol" + " 1200",
                imageName: App.depositIcon,
                textAfterImage: StringRes.Deposit),
            SizedBox(
              height: 10,
            ),
            CommonWidget.darkStraightContainer(
                color: backContainerColor,
                dollarString: "dol" + " 350",
                imageName: App.dabitIcon,
                textAfterImage: StringRes.Debit),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                TextStyleRes.textUbuntuStyleFont2(
                    text: StringRes.Payment1, fontSize: 12, textColor: txtColor),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 100,
                  child: Image.asset(
                    App.paypal,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Spacer(),
                CommonWidget.activeButton()
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TextStyleRes.textUbuntuStyleFont2(
                    text: StringRes.Payment2, fontSize: 12, textColor: txtColor),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 120,
                  child: Image.asset(
                    App.bankAccountimg,
                    fit: BoxFit.fill,
                  ),
                ),
                Spacer(),
                CommonWidget.activeButton()
              ],
            ),
            SizedBox(
              height: 80,
            ),
            CommonWidget.squareButton(
                textColor: txtColor,
                containerColor: btnColor,
                fontSize: 12.0,
                text: StringRes.PayNow,
                onTap: () {},
                width: 100.0,
                height: 40.0)
          ],
        ),
      ),
    );
  }
}
