import 'package:flutter/material.dart';
import 'package:kinoverse/Page/HireSignUp/hire_contract.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_route.dart';
import 'package:kinoverse/common/common_widget.dart';

class HireContractTabView extends StatefulWidget {
  @override
  _HireContractTabViewState createState() => _HireContractTabViewState();
}

class _HireContractTabViewState extends State<HireContractTabView> {
  TextEditingController searchControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchView(),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CommonWidget.squareButton(
                  containerColor: btnColor,
                  onTap: () {},
                  text: StringRes.PostaNewJob,
                  textColor: txtColor,
                  fontSize: 12.0,
                  height: 35.0,
                  width: 115.0)),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: getDeviceWidth(context),
                color: blueGray,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      TextStyleRes.textUbuntuStyleFont2(
                          maxLine: 3,
                          textColor: txtColor,
                          text: StringRes.weNeed,
                          fontSize: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: CommonWidget.squareWithIconButton(
                                height: 25.0,
                                width: 65.0,
                                borderColor: txtDescriptionColor,
                                textColor: txtColor,
                                fontSize: 10.0,
                                text: StringRes.Youtube,
                                containerColor: bgColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: CommonWidget.squareWithIconButton(
                                height: 25.0,
                                width: 76.0,
                                borderColor: txtDescriptionColor,
                                textColor: txtColor,
                                fontSize: 10.0,
                                text: StringRes.Videographer,
                                containerColor: bgColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: CommonWidget.squareWithIconButton(
                                height: 25.0,
                                width: 100.0,
                                borderColor: txtDescriptionColor,
                                textColor: txtColor,
                                fontSize: 10.0,
                                text: StringRes.MirrorlessCam,
                                containerColor: bgColor,
                              ),
                            ),
                            CommonWidget.squareWithIconButton(
                              height: 25.0,
                              width: 90.0,
                              borderColor: txtDescriptionColor,
                              textColor: txtColor,
                              fontSize: 10.0,
                              text: StringRes.DSLR,
                              containerColor: bgColor,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 3.0),
                            child: CommonWidget.squareDarkBlueGrayButton(
                                height: 45.0,
                                width: 127.0,
                                onTap: () {},
                                textColor: txtColor,
                                fontSize: 10.0,
                                text: StringRes.Lessthan30hoursweek,
                                containerColor: backContainerColor,
                                descriptiontextColor: txtDescriptionColor,
                                descriptiontextfontSize: 10.0,
                                descriptiontexttext: StringRes.Hours),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 3.0),
                            child: CommonWidget.squareDarkBlueGrayButton(
                                height: 45.0,
                                width: 110.0,
                                onTap: () {},
                                textColor: txtColor,
                                fontSize: 10.0,
                                text: StringRes.year1,
                                containerColor: backContainerColor,
                                descriptiontextColor: txtDescriptionColor,
                                descriptiontextfontSize: 10.0,
                                descriptiontexttext: StringRes.Duration),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 3.0),
                            child: CommonWidget.squareDarkBlueGrayButton(
                                height: 45.0,
                                width: 90.0,
                                onTap: () {},
                                textColor: txtColor,
                                fontSize: 10.0,
                                text: StringRes.Expert,
                                containerColor: backContainerColor,
                                descriptiontextColor: txtDescriptionColor,
                                descriptiontextfontSize: 10.0,
                                descriptiontexttext: StringRes.ExperienceLevel),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CommonWidget.darkStraightContainer(
                          color: backContainerColor,
                          dollarString: "\$450",
                          imageName: App.total,
                          textAfterImage: StringRes.Budget),
                      SizedBox(
                        height: 10,
                      ),
                      TextStyleRes.textUbuntuStyleFont2(
                          text: StringRes.FreelancersContracted,
                          fontSize: 12,
                          textColor: txtColor),
                      ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (context, int index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, top: 8),
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
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
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
                                    text: StringRes.PayFilmaker,
                                    onTap: () {
                                      CommonRoutePage.goToScreen(
                                          context, HireContractScreen());
                                    },
                                    width: 120.0,
                                    height: 30.0)
                              ],
                            );
                          }),
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
                            Icons.keyboard_arrow_up,
                            color: txtDescriptionColor,
                            size: 12,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  searchView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8, top: 8),
          child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 20,
              decoration:
                  BoxDecoration(border: Border.all(color: txtDescriptionColor)),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.7,
                      height: MediaQuery.of(context).size.height / 20,
                      child: TextFormField(
                        controller: searchControler,
                        cursorColor: txtDescriptionColor,
                        style: TextStyle(
                          fontFamily: App.font2,
                          color: txtDescriptionColor,
                          fontSize: 10,
                        ),
                        decoration: new InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 10,
                              bottom: 18,
                            ),
                            hintText: StringRes.Searchjob,
                            hintStyle: TextStyle(
                              fontFamily: App.font1,
                              color: txtDescriptionColor,
                              fontSize: 10,
                            )),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: 16,
                        height: 13,
                        child: Image.asset(
                          App.search,
                          height: 16,
                          width: 13,
                          color: txtDescriptionColor,
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 9),
          child: Container(
            width: 16,
            height: 13,
            child: Image.asset(
              App.filter,
              height: 16,
              width: 13,
              color: txtDescriptionColor,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 9),
            child: TextStyleRes.textUbuntuStyleFont2(
              textColor: txtDescriptionColor,
              fontSize: 10,
              text: StringRes.Filters,
            ))
      ],
    );
  }
}
