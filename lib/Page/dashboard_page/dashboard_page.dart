import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';

class DashBoardPage extends StatefulWidget {
  @override
  int index;

  DashBoardPage(this.index);

  int menuIndex = 0;

  DashBoardPageState createState() => DashBoardPageState();
}

class DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          decoration: BoxDecoration(color: btnColor, boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
            ),
          ]),
          width: getDeviceWidth(context),
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      App.drawerIcon,
                      height: 18,
                      width: 18,
                    ),
                    Text(
                      "Jobs",
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
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 4),
                  child: Text(
                    "Post Job",
                    style: TextStyle(color: colorWhite, fontFamily: App.font1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: bgColor,
      bottomNavigationBar: bottomNavigationBar(context, changeIndex),
      body: Container(
        child: getMenuByIndex,
      ),
    );
  }

  Widget get getMenuByIndex {
    print("menuIndex -> " + widget.menuIndex.toString());
    if (widget.menuIndex == 0) {
      // return HomePage(changeIndex);
    } else if (widget.menuIndex == 1) {
      //return MapPage(changeIndex);
      // return StoreDetailPage(changeIndex);
    } else if (widget.menuIndex == 2) {
      //return ProfilePage(changeIndex);
    } else if (widget.menuIndex == 3) {
      // return PostOrdersPage(changeIndex);
    } else if (widget.menuIndex == 4) {
      // return DeliveryDetailPage(changeIndex);
    } else if (widget.menuIndex == 5) {
      // return ReciptPage(changeIndex);
    } else if (widget.menuIndex == 6) {
      // return ContactPage(changeIndex);
    } else if (widget.menuIndex == 7) {
      // return StoreDetailPage(changeIndex);
    }
  }

  changeIndex(int index) {
    setState(() {
      widget.menuIndex = index;
    });
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
                              color:
                                  widget.menuIndex == 1 ? colorWhite : btnColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Jobs",
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  widget.menuIndex == 1 ? colorWhite : btnColor,
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
