import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/Page/HireSignUp/hire_your_notification.dart';
import 'package:kinoverse/Page/HireSignUp/star_rate.dart';
import 'package:kinoverse/Page/custom_widget/Hire_contract_tab_view.dart';
import 'package:kinoverse/Page/custom_widget/Hire_filmMaker.dart';
import 'package:kinoverse/Page/custom_widget/Hire_payNow_view.dart';
import 'package:kinoverse/Page/custom_widget/Hire_posting_tab_view.dart';
import 'package:kinoverse/Page/custom_widget/hire_all_tabe_view.dart';
import 'package:kinoverse/Page/custom_widget/hire_search_tab_view.dart';
import 'package:kinoverse/Page/custom_widget/hire_summary_tab_view.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';
import 'package:kinoverse/Page/HireSignUp/hire_chat_screen.dart';

import 'custom_radio_button.dart';


typedef void RatingChangeCallback(double rating);

class HireContractScreen extends StatefulWidget {
  @override
  HireContractScreenState createState() => HireContractScreenState();
}

class HireContractScreenState extends State<HireContractScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int menuIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarWithTabBar(),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                // HireContractTabView(),
                //  HirePostTabView(),

                // HireAllTabeView(),
                // HireYourNotification(),
                HireContractTabView(),
                 // HireSearchTabView(),
                //HireFvFilm_maker
                //hire_film_maker
                // HireChatView(),
                // ChatPage(),
                // second tab bar view widget
                ///---
                // HireSummaryTabView(),
                getMenuByIndex(),
                Container(
                  color: bgColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  getMenuByIndex() {
    if (menuIndex == 0) {
      return HireFilmMaker(callBackIndex: changeIndex);
    } else if (menuIndex == 1) {
      return CustomRadio(
        callBackIndex: changeIndex,
      );
    } else if (menuIndex == 2) {
      return HirePayNowView(
        callBackIndex: changeIndex,
      );
    }
    return getMenuByIndex();
  }

  changeIndex(int index) {
    setState(() {
      menuIndex = index;
    });
  }

  appBarWithTabBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(getDeviceHeight(context) * 0.14),
      child: Container(
        decoration: BoxDecoration(
          color: btnColor,
        ),
        width: getDeviceWidth(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      App.drawerIcon,
                      height: 18,
                      width: 18,
                    ),
                    Text(
                      StringRes.Contract,
                      style:
                          TextStyle(color: colorWhite, fontFamily: App.font1),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5378.jpg?size=626&ext=jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 36.4,
                width: getDeviceWidth(context) / 1.1,
                decoration: BoxDecoration(
                  color: btnColor,
                ),
                child: TabBar(
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      )),
                  labelColor: txtColor,
                  labelStyle: TextStyle(fontSize: 12, fontFamily: App.font2),
                  unselectedLabelColor: txtDescriptionColor,
                  tabs: [
                    Tab(
                      text: StringRes.summary,
                    ),
                    Tab(
                      text: StringRes.Payment,
                    ),
                    Tab(
                      text: StringRes.Transactions,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  summaryTabView() {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, left: 20, right: 20),
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
              width: 200.0,
              height: 40.0)
        ],
      ),
    );
  }

// payNowView() {
//   return SingleChildScrollView(
//     child: Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             children: [
//               Container(),
//               Spacer(),
//               Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(color: txtDescriptionColor)),
//                   height: 30,
//                   width: 63,
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: 7,
//                       ),
//                       TextStyleRes.textUbuntuStyleFont2(
//                           text: StringRes.Edit,
//                           fontSize: 12,
//                           textColor: txtDescriptionColor),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Image.asset(
//                         App.edit,
//                         color: txtDescriptionColor,
//                         height: 15,
//                         width: 15,
//                       ),
//                       SizedBox(
//                         width: 7,
//                       ),
//                     ],
//                   )),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             color: backContainerColor,
//             height: getDeviceHeight(context) / 3.2,
//             width: getDeviceWidth(context) / 1,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       TextStyleRes.textUbuntuStyleFont2(
//                           text: StringRes.videographer,
//                           fontSize: 12,
//                           textColor: txtColor),
//                       Padding(
//                         padding: EdgeInsets.only(left: 8),
//                         child: CommonWidget.activeButton(),
//                       )
//                     ],
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 8, bottom: 8),
//                     child: TextStyleRes.textUbuntuStyleFont2(
//                         text: StringRes.viewMore,
//                         fontSize: 12,
//                         textColor: txtDescriptionColor),
//                   ),
//                   TextStyleRes.textUbuntuStyleFont2(
//                       text: StringRes.willPaidTo,
//                       fontSize: 12,
//                       textColor: txtColor),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             bottom: 8.0, top: 8, right: 8),
//                         child: CircleAvatar(
//                           radius: 21,
//                           backgroundColor: btnColor,
//                           child: CircleAvatar(
//                             radius: 20,
//                             backgroundImage: AssetImage(App.profile),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             bottom: 8.0, top: 8, right: 8),
//                         child: CircleAvatar(
//                           radius: 21,
//                           backgroundColor: btnColor,
//                           child: CircleAvatar(
//                             radius: 20,
//                             backgroundImage: AssetImage(App.profile),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 8),
//                     child: TextStyleRes.textUbuntuStyleFont2(
//                         text: StringRes.PaymentMethod,
//                         fontSize: 12,
//                         textColor: txtDescriptionColor),
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                           height: 30,
//                           width: 120,
//                           color: txtColor,
//                           child: Center(
//                             child: TextStyleRes.textUbuntuStyleFont2(
//                                 text: StringRes.milestones,
//                                 fontSize: 12,
//                                 textColor: bgColor),
//                           )),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 30,
//                         width: 120,
//                         child: Image.asset(
//                           App.paypal,
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             color: txtColor,
//             height: getDeviceHeight(context) / 9,
//             width: getDeviceWidth(context) / 1,
//             child: TextFormField(
//               cursorColor: txtColor,
//               maxLines: 8,
//               style: TextStyle(
//                 fontFamily: App.font2,
//                 color: txtDescriptionColor,
//                 fontSize: 12,
//               ),
//               decoration: new InputDecoration(
//                   border: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                   enabledBorder: InputBorder.none,
//                   errorBorder: InputBorder.none,
//                   disabledBorder: InputBorder.none,
//                   contentPadding: EdgeInsets.only(
//                     left: 10,
//                     bottom: 11,
//                     top: 11,
//                   ),
//                   hintText: StringRes.addReview,
//                   hintStyle: TextStyle(
//                     fontFamily: App.font1,
//                     color: txtDescriptionColor,
//                     fontSize: 12,
//                   )),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             children: [
//               TextStyleRes.textUbuntuStyleFont2(
//                   text: StringRes.PaymentMethod,
//                   fontSize: 12,
//                   textColor: txtDescriptionColor),
//               Spacer(),
//               StarRating(
//                 rating: rating,
//                 onRatingChanged: (rating) =>
//                     setState(() => this.rating = rating),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           CommonWidget.darkStraightContainer(
//               color: backContainerColor,
//               dollarString: "dol" + " 1200",
//               imageName: App.addic,
//               textAfterImage: StringRes.AddBonus),
//           SizedBox(
//             height: 10,
//           ),
//           CommonWidget.darkStraightContainer(
//               extratext: StringRes.asKinoverseSerice,
//               color: backContainerColor,
//               dollarString: "dol" + " 350",
//               imageName: App.charge,
//               textAfterImage: StringRes.Charge),
//           SizedBox(
//             height: 10,
//           ),
//           CommonWidget.darkStraightContainer(
//               color: backContainerColor,
//               dollarString: "dol" + " 1200",
//               imageName: App.total,
//               textAfterImage: StringRes.Total),
//           SizedBox(
//             height: 10,
//           ),
//           CommonWidget.squareButton(
//               textColor: txtColor,
//               containerColor: btnColor,
//               fontSize: 12.0,
//               text: StringRes.PayNow,
//               onTap: () {},
//               width: 200.0,
//               height: 40.0)
//         ],
//       ),
//     ),
//   );
// }

}
