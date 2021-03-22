import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class HireFilmMaker extends StatefulWidget {
  final Function callBackIndex;

  const HireFilmMaker({Key key, this.callBackIndex}) : super(key: key);
  @override
  _HireFilmMakerState createState() => _HireFilmMakerState();
}

class _HireFilmMakerState extends State<HireFilmMaker> {
  int toggle = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommonWidget.darkStraightContainer(
                color: txtDescriptionColor,
                dollarString: "\$450",
                imageName: App.total,
                textAfterImage: StringRes.Budget),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: Container(
                width: getDeviceWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(App.profile),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              TextStyleRes.textUbuntuStyleFont2(
                                  textColor: txtColor,
                                  text: "Michael Jordan",
                                  fontSize: 10),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 10,
                                      height: 10,
                                      child: Image.asset(
                                        App.location,
                                        color: txtDescriptionColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    TextStyleRes.textUbuntuStyleFont2(
                                        textColor: txtDescriptionColor,
                                        text: "Bali, Indonesia",
                                        fontSize: 8),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 4),
                              child: TextStyleRes.textUbuntuStyleFont2(
                                  textColor: txtColor,
                                  text: StringRes.videographer,
                                  fontSize: 12),
                            ),
                            TextStyleRes.textUbuntuStyleFont2(
                                textColor: txtDescriptionColor,
                                text: "Due March 21, 2021",
                                fontSize: 10),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: CommonWidget.activeButton(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: TextStyleRes.textUbuntuStyleFont2(
                              text: StringRes.viewMore,
                              fontSize: 12,
                              textColor: txtDescriptionColor),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: txtDescriptionColor,
                          size: 12,
                        )
                      ],
                    ),
                    TextStyleRes.textUbuntuStyleFont2(
                        text: StringRes.filmmakersonthiscontract,
                        fontSize: 12,
                        textColor: txtColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                          child: CircleAvatar(
                            backgroundColor: btnColor,
                            radius: 21,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(App.profile),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              TextStyleRes.textUbuntuStyleFont2(
                                  textColor: txtColor,
                                  text: "Sheila Anastasia",
                                  fontSize: 10),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 10,
                                      height: 10,
                                      child: Image.asset(
                                        App.location,
                                        color: txtDescriptionColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    TextStyleRes.textUbuntuStyleFont2(
                                        textColor: txtDescriptionColor,
                                        text: "San Fransisco, USA",
                                        fontSize: 8),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        CommonWidget.squareWithIconButton(
                            textColor: txtColor,
                            containerColor: btnColor,
                            fontSize: 12.0,
                            borderColor: btnColor,
                            sizeboxWidth: 8.0,
                            text: StringRes.AddtoPayment,
                            onTap: () {},
                            imageName: App.edit,
                            width: 120.0,
                            height: 30.0)
                      ],
                    ),
                    TextStyleRes.textUbuntuStyleFont2(
                        text: StringRes.PaymentMethod,
                        fontSize: 12,
                        textColor: txtColor),
                    SizedBox(
                      height: 10,
                    ),
                    CommonWidget.squareWithIconButton(
                        textColor: txtColor,
                        containerColor: bgColor,
                        fontSize: 10.0,
                        borderColor: txtColor,
                        sizeboxWidth: 8.0,
                        text: StringRes.EditMilestones,
                        onTap: () {},
                        imageName: App.addIcon,
                        width: 145.0,
                        height: 35.0),
                    SizedBox(
                      height: 10,
                    ),
                    CommonWidget.squareWithIconButton(
                        textColor: txtColor,
                        containerColor: bgColor,
                        fontSize: 10.0,
                        borderColor: txtColor,
                        sizeboxWidth: 8.0,
                        text: StringRes.PaymentOptions,
                        onTap: () {
                          widget.callBackIndex(0);
                        },
                        imageName: App.addIcon,
                        width: 145.0,
                        height: 35.0),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonWidget.backWordButton(
                    setState: () {
                      setState(() {
                        toggle = 0;
                      });
                    },
                    toggle: toggle),
                CommonWidget.forwordButton(() {
                  setState(() {
                    toggle = 1;
                  });
                  widget.callBackIndex(1);
                }, toggle, StringRes.SubmitforPayment)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
