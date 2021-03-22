import 'package:flutter/material.dart';
import 'package:kinoverse/Page/Hire_screen/hire_favourite_film_maker.dart';
import 'package:kinoverse/Page/Hire_screen/hire_film_maker_tabview.dart';
import 'package:kinoverse/Page/Hire_screen/hire_your_notification.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_1/post_new_job_1.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_2/post_new_job_2.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_3/post_new_job_3.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_4/post_new_job_4.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_5/post_new_job5.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_6/post_new_job_6.dart';
import 'package:kinoverse/Page/Hire_screen/post_new_job_7/post_new_job_7.dart';
import 'package:kinoverse/Page/custom_widget/Hire_contract_tab_view.dart';
import 'package:kinoverse/Page/custom_widget/Hire_posting_tab_view.dart';
import 'package:kinoverse/Page/custom_widget/hire_all_tabe_view.dart';
import 'package:kinoverse/Page/custom_widget/hire_search_tab_view.dart';
import 'package:kinoverse/Page/dashboard_page/profile_pop_up.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/common_widget.dart';

class DashBoardPage extends StatefulWidget {
  @override
  int index;

  DashBoardPage(this.menuIndex);

  int menuIndex = 0;

  DashBoardPageState createState() => DashBoardPageState();
}

class DashBoardPageState extends State<DashBoardPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController tabController;

  int menuIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());

    return Scaffold(
      key: _scaffoldKey,
      appBar: widget.menuIndex == 0
          ? appBarJobsWithTabBar()
          : widget.menuIndex == 12
              ? appBarJobsApcWithTabBar()
              : CommonWidget.hireAppbar(context,
                  widget.menuIndex == 3 ? "Your Notifications" : "Post Job",
                  () {
                  _scaffoldKey.currentState.openDrawer();
                }),
      backgroundColor: bgColor,
      drawer: Drawer(child: CommonWidget.drawer(context)),
      bottomNavigationBar: bottomNavigationBar(context, changeIndex),
      body: Container(
        child: getMenuByIndex,
      ),
    );
  }

  changeIndex(int index) {
    setState(() {
      widget.menuIndex = index;
    });
  }

  appBarJobsWithTabBar() {
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
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Image.asset(
                        App.drawerIcon,
                        height: 18,
                        width: 18,
                      ),
                    ),
                    Text(
                      'Jobs',
                      style:
                          TextStyle(color: colorWhite, fontFamily: App.font1),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return ToggleButton();
                            });
                      },
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5378.jpg?size=626&ext=jpg"),
                      ),
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
                  controller: tabController,
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
                      text: "Search",
                    ),
                    Tab(
                      text: "Hire",
                    ),
                    Tab(
                      text: "Saved",
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

  appBarJobsApcWithTabBar() {
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
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Image.asset(
                        App.drawerIcon,
                        height: 18,
                        width: 18,
                      ),
                    ),
                    Text(
                      'Jobs',
                      style:
                          TextStyle(color: colorWhite, fontFamily: App.font1),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return ToggleButton();
                            });
                      },
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5378.jpg?size=626&ext=jpg"),
                      ),
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
                  controller: tabController,
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
                      text: "All",
                    ),
                    Tab(
                      text: "Posting",
                    ),
                    Tab(
                      text: "Contract",
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

  Widget get getMenuByIndex {
    print("menuIndex -> " + widget.menuIndex.toString());
    if (widget.menuIndex == 0) {
      return Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                // first tab bar view widget
                // HireContractTabView(),
                //  HirePostTabView(),

                // HireAllTabeView(),
                // HireYourNotification(),
                HireSearchTabView(),

                HireFilmMakerTabView(),
                HireFavouriteFilmMaker(),

                // HireSearchTabView(),
                //HireFvFilm_maker
                //hire_film_maker
                // HireChatView(),
                // ChatPage(),
                // second tab bar view widget
                ///---
                // HireSummaryTabView(),
              ],
            ),
          ),
        ],
      );
    } else if (widget.menuIndex == 12) {
      return Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                // first tab bar view widget
                // HireContractTabView(),
                //  HirePostTabView(),

                // HireAllTabeView(),
                // HireYourNotification(),
                HireAllTabeView(),

                HirePostTabView(),
                HireContractTabView(),

                // HireSearchTabView(),
                //HireFvFilm_maker
                //hire_film_maker
                // HireChatView(),
                // ChatPage(),
                // second tab bar view widget
                ///---
                // HireSummaryTabView(),
              ],
            ),
          ),
        ],
      );
    } else if (widget.menuIndex == 1) {
      return PostNewJob1(changeIndex);
    } else if (widget.menuIndex == 100) {
      return PostNewJob2(changeIndex);
    } else if (widget.menuIndex == 101) {
      return PostNewJob3(changeIndex);
    } else if (widget.menuIndex == 102) {
      return PostNewJob4(changeIndex);
    } else if (widget.menuIndex == 103) {
      return PostNewJob5(changeIndex);
    } else if (widget.menuIndex == 104) {
      return PostNewJob6(changeIndex);
    } else if (widget.menuIndex == 105) {
      return PostNewJob7(changeIndex);
    } else if (widget.menuIndex == 2) {
    } else if (widget.menuIndex == 3) {
      return HireYourNotification();
    } else if (widget.menuIndex == 4) {
    } else if (widget.menuIndex == 6) {
    } else if (widget.menuIndex == 7) {}
  }

  Widget bottomNavigationBar(BuildContext context, changeIndex) {
    return SafeArea(
      child: Container(
        height: getDeviceHeight(context) / 10,
        alignment: Alignment.bottomCenter,
        width: getDeviceWidth(context),
        child: Container(
          decoration: BoxDecoration(color: bgColor, boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10.0,
            ),
          ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    changeIndex.call(0);
                    setState(() {
                      widget.menuIndex = 0;
                    });
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset(
                              App.talent,
                              height: 15,
                              width: 15,
                              color:
                                  widget.menuIndex == 0 ? colorWhite : btnColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Talent",
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  widget.menuIndex == 0 ? colorWhite : btnColor,
                              fontFamily: App.font2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeIndex.call(1);
                    setState(() {});
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset(
                              App.jobs,
                              height: 15,
                              width: 15,
                              color: widget.menuIndex == 1 ||
                                      widget.menuIndex == 100 ||
                                      widget.menuIndex == 101 ||
                                      widget.menuIndex == 102 ||
                                      widget.menuIndex == 103 ||
                                      widget.menuIndex == 104 ||
                                      widget.menuIndex == 105 ||
                                      widget.menuIndex == 12
                                  ? colorWhite
                                  : btnColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Jobs",
                            style: TextStyle(
                              fontSize: 10,
                              color: widget.menuIndex == 1 ||
                                      widget.menuIndex == 100 ||
                                      widget.menuIndex == 101 ||
                                      widget.menuIndex == 102 ||
                                      widget.menuIndex == 103 ||
                                      widget.menuIndex == 104 ||
                                      widget.menuIndex == 105 ||
                                      widget.menuIndex == 12
                                  ? colorWhite
                                  : btnColor,
                              fontFamily: App.font2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeIndex.call(2);
                    setState(() {});
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Image.asset(
                            App.messages,
                            height: 15,
                            width: 15,
                            color:
                                widget.menuIndex == 2 ? colorWhite : btnColor,
                          )),
                          SizedBox(height: 4),
                          Text(
                            "Messages",
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  widget.menuIndex == 2 ? colorWhite : btnColor,
                              fontFamily: App.font2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeIndex.call(3);
                    setState(() {});
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Image.asset(
                            App.alert,
                            height: 15,
                            width: 15,
                            color:
                                widget.menuIndex == 3 ? colorWhite : btnColor,
                          )),
                          SizedBox(height: 4),
                          Text(
                            "Alerts",
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  widget.menuIndex == 3 ? colorWhite : btnColor,
                              fontFamily: App.font2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
