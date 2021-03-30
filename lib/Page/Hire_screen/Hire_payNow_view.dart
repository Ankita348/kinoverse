import 'package:flutter/material.dart';
import 'package:kinoverse/Page/Hire_screen/star_rate.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class HirePayNowView extends StatefulWidget {
  final Function callBackIndex;

  const HirePayNowView({Key key, this.callBackIndex}) : super(key: key);
  @override
  _HirePayNowViewState createState() => _HirePayNowViewState();
}

class _HirePayNowViewState extends State<HirePayNowView> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return WillPopScope(
      onWillPop: () {
        return widget.callBackIndex(1);
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(),
                  Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: txtDescriptionColor)),
                      height: 25,
                      width: 61,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 7,
                          ),
                          TextStyleRes.textUbuntuStyleFont2(
                              text: StringRes.Edit,
                              fontSize: 12,
                              textColor: txtDescriptionColor),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            App.edit,
                            color: txtDescriptionColor,
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                color: backContainerColor,
                height: getDeviceHeight(context) / 3,
                width: getDeviceWidth(context) / 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TextStyleRes.textUbuntuStyleFont2(
                                text: StringRes.videographer,
                                fontSize: 12,
                                textColor: txtColor),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: CommonWidget.activeButton(),
                            )
                          ],
                        ),
                        TextStyleRes.textUbuntuStyleFont2(
                            text: "Due March 21, 2021",
                            fontSize: 10,
                            textColor: txtDescriptionColor),
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
                            text: StringRes.willPaidTo,
                            fontSize: 12,
                            textColor: txtColor),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, top: 8, right: 8),
                              child: CircleAvatar(
                                radius: 21,
                                backgroundColor: btnColor,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(App.profile),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, top: 8, right: 8),
                              child: CircleAvatar(
                                radius: 21,
                                backgroundColor: btnColor,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(App.profile),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextStyleRes.textUbuntuStyleFont2(
                              text: StringRes.PaymentMethod,
                              fontSize: 12,
                              textColor: txtColor),
                        ),
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 120,
                                color: txtColor,
                                child: Center(
                                  child: TextStyleRes.textUbuntuStyleFont2(
                                      text: StringRes.milestones,
                                      fontSize: 12,
                                      textColor: bgColor),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 120,
                              child: Image.asset(
                                App.paypal,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:8,
              ),
              Container(
                color: txtColor,
                height: getDeviceHeight(context) / 9,
                width: getDeviceWidth(context) / 1,
                child: TextFormField(
                  cursorColor: txtColor,
                  maxLines: 8,
                  style: TextStyle(
                    fontFamily: App.font2,
                    color: txtDescriptionColor,
                    fontSize: 12,
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
                      hintText: StringRes.addReview,
                      hintStyle: TextStyle(
                        fontFamily: App.font1,
                        color: txtDescriptionColor,
                        fontSize: 12,
                      )),
                ),
              ),
              SizedBox(
                height:8,
              ),
              Row(
                children: [
                  TextStyleRes.textUbuntuStyleFont2(
                      text: "(5 Stars is perfect work)",
                      fontSize: 12,
                      textColor: txtDescriptionColor),
                  Spacer(),
                  StarRating(
                    rating: rating,
                    onRatingChanged: (rating) =>
                        setState(() => this.rating = rating),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CommonWidget.darkStraightContainer(
                  color: backContainerColor,
                  dollarString: "\$1200",
                  imageName: App.addic,
                  textAfterImage: StringRes.AddBonus),
              SizedBox(
                height: 6,
              ),
              CommonWidget.darkStraightContainer(
                  extratext: StringRes.asKinoverseSerice,
                  color: backContainerColor,
                  dollarString:  "\$350",
                  imageName: App.charge,
                  textAfterImage: StringRes.Charge),
              SizedBox(
                height: 6,
              ),
              CommonWidget.darkStraightContainer(
                  color: backContainerColor,
                  dollarString:  "\$1200",
                  imageName: App.total,
                  textAfterImage: StringRes.Total),
              SizedBox(
                height: 6,
              ),
              CommonWidget.squareButton(
                  textColor: txtColor,
                  containerColor: btnColor,
                  fontSize: 12.0,
                  text: StringRes.PayNow,
                  onTap: () {},
                  width: 100.0,
                  height: 35.0),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
