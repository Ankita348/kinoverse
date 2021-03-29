import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/Page/dashboard_page/dashboard_page.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_route.dart';
import 'package:kinoverse/common/common_widget.dart';

class HireUpdateProfile extends StatefulWidget {
  @override
  _HireUpdateProfileState createState() => _HireUpdateProfileState();
}

class _HireUpdateProfileState extends State<HireUpdateProfile> {
  bool enableTap = false;
  TextEditingController ownerController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController vatIdController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appbar(context),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          editProfileDetail(context),
          SizedBox(
            height: 20,
          ),
          companyContactView(),
          CommonWidget.squareButton(
            text: StringRes.createNewAccount,
            fontSize: 14.0,
            height: 35.0,
            width: 200.0,
            containerColor: btnColor,
            textColor: txtColor,
            onTap: () {
              CommonRoutePage.goToScreen(context, DashBoardPage(0));
            },
          )
        ],
      )),
    );
  }

  companyContactView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: getDeviceWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtColor,
                text: StringRes.companyContacts,
                fontSize: 10.0),
            SizedBox(
              height: 10,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtColor, text: StringRes.owner, fontSize: 10.0),
            SizedBox(
              height: 5,
            ),
            CommonWidget.textField(context,
                textColor: txtColor,
                fontSize: 10.0,
                controller: ownerController),
            SizedBox(
              height: 5,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtColor,
                text: StringRes.phoneNumber,
                fontSize: 10.0),
            SizedBox(
              height: 5,
            ),
            CommonWidget.textField(context,
                textColor: txtColor,
                fontSize: 10.0,
                controller: phoneNumberController),
            SizedBox(
              height: 5,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtColor, text: StringRes.vatId, fontSize: 10.0),
            SizedBox(
              height: 5,
            ),
            CommonWidget.textField(context,
                textColor: txtColor,
                fontSize: 10.0,
                controller: vatIdController),
            SizedBox(
              height: 5,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtDescriptionColor,
                text: StringRes.vatIdEnable,
                fontSize: 10.0),
            SizedBox(
              height: 5,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtColor, text: StringRes.timezone, fontSize: 10.0),

            categoryDropDown(),
            SizedBox(
              height: 5,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                textColor: txtColor, text: StringRes.address, fontSize: 10.0),
            SizedBox(
              height: 5,
            ),
            CommonWidget.textField(context,
                textColor: txtColor,
                fontSize: 10.0,
                controller: addressController),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  categoryDropDown() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 50,
        // height: getDeviceHeight(context) / 18,
        width: getDeviceWidth(context)/1.5,
        // padding: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          border: Border.all(
              color: btnBorderWhite, style: BorderStyle.solid, width: 0.80),
        ),
        child: CountryCodePicker(
          showFlag: false,
          // showDropDownButton: true,

          dialogBackgroundColor: bgColor,
          dialogSize: Size.square(300),
          boxDecoration:  BoxDecoration(
            color: bgColor,
            boxShadow: [
              BoxShadow(
                  color: shadowColorBlack,
                  spreadRadius: 1,
                  blurRadius: 6)
            ],
          ),
          // backgroundColor: backContainerColor,
          dialogTextStyle: TextStyle(
            color: txtColor,
          ),
          textStyle: TextStyle(color: txtColor),
          alignLeft: true,
          hideSearch: true,

          enabled: true,
          onChanged: (c) => c.name,

          // initialSelection: 'IND',
          showCountryOnly: true,
          showOnlyCountryWhenClosed: true,
          // favorite: ['+39', 'FR'],
        ),
        // child: Theme(
        //   data: ThemeData(canvasColor: bgColor),
        //   child: DropdownButton(
        //       underline: SizedBox(),
        //       hint: TextStyleRes.textUbuntuStyleFont2(
        //           fontSize: 10,
        //           text: "UTC+07:00 Omsk, Novosibirsk",
        //           textColor: txtColor),
        //       style: TextStyle(fontSize: 10, color: txtColor),
        //       value: _value,
        //       items: [
        //         DropdownMenuItem(
        //           child: Text(
        //             "UTC+07:00 Omsk, Novosibirsk",
        //           ),
        //           value: 1,
        //         ),
        //         DropdownMenuItem(
        //           child: Text("Second Item"),
        //           value: 2,
        //         ),
        //         DropdownMenuItem(child: Text("Third Item"), value: 3),
        //         DropdownMenuItem(child: Text("Fourth Item"), value: 4)
        //       ],
        //       onChanged: (value) {
        //         setState(() {
        //           _value = value;
        //         });
        //       }),
        //   child: ,
        // ),
      ),
    );
  }

  appbar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(getDeviceHeight(context) * 0.11),
      child: Container(
        color: bgColor,
        width: getDeviceWidth(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 18,
                      color: txtColor,
                    ),
                  ),
                  TextStyleRes.textStyleFont1(
                      textColor: txtColor,
                      fontSize: 14,
                      text: StringRes.companyProfile),
                  Container()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  editProfileDetail(context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Container(
        width: getDeviceWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(App.profile),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: TextFormField(
                      cursorColor: txtColor,
                      style: TextStyle(
                        fontFamily: App.font2,
                        color: txtColor,
                        fontSize: 12,
                      ),
                      enabled: enableTap,
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
                          hintText: "Maria Sharapova",
                          hintStyle: TextStyle(
                            fontFamily: App.font1,
                            color: txtColor,
                            fontSize: 12,
                          )),
                    )),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      enableTap = !enableTap;
                      print(enableTap);
                    });
                  },
                  child: Container(
                    width: 15,
                    height: 15,
                    child: Image.asset(App.edit),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  child: Image.asset(App.location),
                ),
                SizedBox(
                  width: 15,
                ),
                TextStyleRes.textStyleFont1(
                    textColor: txtColor, text: "Moscow,Russia", fontSize: 12),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: TextStyleRes.textStyleFont1(
                  textColor: txtColor,
                  text: "11.06 AM local time",
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
