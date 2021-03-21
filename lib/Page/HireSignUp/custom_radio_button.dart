import 'package:flutter/material.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

import '../../app.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = new List<RadioModel>();
int select=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(
      true,
      Column(
        children: [
          Image.asset(
            App.PayPalLogo,
            fit: BoxFit.fitWidth,
            height:60,
            width: 105,
          ),
          TextStyleRes.textUbuntuStyleFont2(
              text: StringRes.CurrentPayment,
              fontSize: 12,
              textColor: txtColor),
        ],
      ),
    ));
    sampleData.add(new RadioModel(
      false,
      Container(
        height:69,
        width: 103,
        child: Image.asset(
          App.Payoneer,
          fit: BoxFit.cover,
        ),
      ),
    ));
    sampleData.add(new RadioModel(
      false,
      Container(
        height:41,
        width: 53,
        child: Image.asset(
          App.Mastercard,
          fit: BoxFit.contain,
        ),
      ),
    ));
    sampleData.add(new RadioModel(
      false,
      Row(
        children: [
          Image.asset(
            App.cil_bank,
            fit: BoxFit.contain,
            height:35,
            width: 35,
          ),
          SizedBox(
            width: 10,
          ),
          TextStyleRes.textUbuntuStyleFont2(
              text: StringRes.BankAccount,
              fontSize: 14,
              textColor: bgColor),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextStyleRes.textUbuntuStyleFont2(
              text: "Payment Options",
              fontSize: 12,
              textColor: txtColor),
          SizedBox(height: 10,),
          Container(
            color: txtDescriptionColor,
            height: getDeviceHeight(context) / 1.6,
            width: getDeviceWidth(context) / 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                new ListView.builder(
                  itemCount: sampleData.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      //highlightColor: Colors.red,
                      // splashColor: Colors.blueAccent,
                      onTap: () {
                        setState(() {
                          sampleData.forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                        });
                      },
                      child: new RadioItem(sampleData[index]),
                    );
                  },
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CommonWidget.squareButton(
                      containerColor:select!=0?bgColor :btnColor,
                      fontSize: 12.0,
                      height: 30.0,
                      width: 80.0,
                      text: StringRes.Cancel,
                      textColor:select!=0?txtColor :txtColor,
                      onTap: () {
                        setState(() {
                          select=0;
                        });
                      },
                    ),
                    SizedBox(width: 10,),
                    CommonWidget.squareButton(
                      containerColor:select!=1?bgColor :btnColor,
                      fontSize: 12.0,
                      height: 30.0,
                      width: 80.0,
                      text: StringRes.Submit,
                      textColor:select!=1?txtColor :txtColor,
                      onTap: () {
                        setState(() {
                          select=1;
                        });
                      },
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: _item.text,
          ),
          Spacer(),
          new Container(
            height: 20.0,
            width: 20.0,
            child: new Center(
              // child: new Text(
              child: Container(
                height: 12,
                width: 12,
                color: _item.isSelected ? btnColor : txtDescriptionColor,
              ),
            ),
            // style: new TextStyle(
            //     color: _item.isSelected ? Colors.white : Colors.black,
            //     //fontWeight: FontWeight.bold,
            //     fontSize: 18.0)),
            // ),
            decoration: new BoxDecoration(
              color: txtDescriptionColor,

              // color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
              border: new Border.all(
                width: 1.0,
                color: btnColor,
              ),
              // color: _item.isSelected ? Colors.blueAccent : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;

  // final Widget buttonText;
  final Widget text;

  RadioModel(this.isSelected, this.text);
}