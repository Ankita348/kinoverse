import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:flutter/material.dart';

class HireChatView extends StatefulWidget {
  @override
  _HireChatViewState createState() => _HireChatViewState();
}

class _HireChatViewState extends State<HireChatView> {
  TextEditingController typeController = TextEditingController();
  String messageType = "sender";
  List message = [
    "Hi, Maria!",
    "Fine!I've done several works..",
    "how,Are you",
    "How is the work progressing?",
    "you?",
    "whare are you now?",
    "At home",
    "okay then good...",
    "Can I see it?",
    "yaaa....."
  ];

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            chatUser(),
            Container(
              height: getDeviceHeight(context) / 1.5,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Row(
                        mainAxisAlignment: messageType == "receiver"
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: [
                          messageType != "receiver"
                              ? Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              messageType == "receiver"
                                  ? Container(
                                height: 10,
                              )
                                  : Padding(
                                padding: EdgeInsets.only(
                                    left: messageType == "receiver"
                                        ? 8
                                        : 0,
                                    top: 10,
                                    right: messageType != "receiver"
                                        ? 8
                                        : 0),
                                child: TextStyleRes
                                    .textUbuntuStyleFont2(

                                    text: "Read",
                                    textColor: messageType ==
                                        "receiver"
                                        ? txtDescriptionColor
                                        : txtDescriptionColor,
                                    fontSize: 8),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left:
                                    messageType == "receiver" ? 8 : 0,
                                    top: 2,
                                    right: messageType != "receiver"
                                        ? 8
                                        : 0),
                                child: TextStyleRes.textUbuntuStyleFont2(

                                    text: "10.39 AM",
                                    textColor: messageType == "receiver"
                                        ? txtDescriptionColor
                                        : txtDescriptionColor,
                                    fontSize: 8),
                              ),
                            ],
                          )
                              : SizedBox(),
                          Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(20),
                                color: (messageType == "receiver"
                                    ? txtDescriptionColor
                                    : backContainerColor),
                              ),
                              padding: EdgeInsets.all(10),
                              child: TextStyleRes.textUbuntuStyleFont2(
                                  text: message[index],
                                  fontSize: 12.0,
                                  textColor: messageType == "receiver"
                                      ? bgColor
                                      : txtColor)),
                          messageType == "receiver"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    messageType == "receiver"
                                        ? Container(
                                            height: 10,
                                          )
                                        : Padding(
                                            padding: EdgeInsets.only(
                                                left: messageType == "receiver"
                                                    ? 8
                                                    : 0,
                                                top: 10,
                                                right: messageType != "receiver"
                                                    ? 8
                                                    : 0),
                                            child: TextStyleRes
                                                .textUbuntuStyleFont2(

                                                    text: "Read",
                                                    textColor: messageType ==
                                                            "receiver"
                                                        ? txtDescriptionColor
                                                        : txtDescriptionColor,
                                                    fontSize: 8),
                                          ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left:
                                              messageType == "receiver" ? 8 : 0,
                                          top: 2,
                                          right: messageType != "receiver"
                                              ? 8
                                              : 0),
                                      child: TextStyleRes.textUbuntuStyleFont2(

                                          text: "10.39 AM",
                                          textColor: messageType == "receiver"
                                              ? txtDescriptionColor
                                              : txtDescriptionColor,
                                          fontSize: 8),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: new BoxDecoration(
                color: bgColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: shadowColorBlack,
                    // offset: Offset(1.0, 6.0),
                    blurRadius: 15.0,
                  ),
                ],
              ),
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      App.voiceCall,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      App.Attachment,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(border: Border.all(color: txtDescriptionColor)),
                    child: TextFormField(
                      controller: typeController,
                      cursorColor: txtDescriptionColor,
                      style: TextStyle(
                        fontFamily: App.font2,
                        color: txtDescriptionColor,
                        fontSize: 14,
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
                          hintText: "Type here..",
                          hintStyle: TextStyle(
                            fontFamily: App.font1,
                            color: txtDescriptionColor,
                            fontSize: 14,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      App.sendMesg,
                      height: 18,
                      width: 18,
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }

  chatUser() {
    return Container(
        width: getDeviceWidth(context),
        height: getDeviceHeight(context) / 12,
        decoration: new BoxDecoration(
          color: bgColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: shadowColorBlack,
              // offset: Offset(1.0, 6.0),
              blurRadius: 15.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: txtColor,
                      ),
                    ),
                    Center(
                      child: Padding(
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
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextStyleRes.textUbuntuStyleFont2(
                          textColor: txtColor,
                          text: "Michael Jordan",
                          fontSize: 12),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: TextStyleRes.textUbuntuStyleFont2(
                            textColor: txtColor, text: "online", fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.more_horiz_sharp,
                    size: 20,
                    color: txtColor,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
