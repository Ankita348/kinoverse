import 'package:flutter/material.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

import '../../app.dart';

class CustomRadio extends StatefulWidget {
  int select;
  Function callBackIndex;
  CustomRadio({this.select,this.callBackIndex});
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = new List<RadioModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(
      true,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
             height: 55,
            width: 100,
            child: Image.asset(
              App.PayPalLogo,
              fit: BoxFit.cover,
            ),
          ),
        Padding(padding: EdgeInsets.only(left: 10),child:   TextStyleRes.textUbuntuStyleFont2(
            text: StringRes.CurrentPayment,
            fontSize: 10,
            textColor: txtColor),)
        ],
      ),
    ));
    sampleData.add(new RadioModel(
      false,
      Container(
        height: 50,
        width: 100,
        child: Image.asset(
          App.Payoneer,
          fit: BoxFit.fitHeight,
        ),
      ),
    ));
    sampleData.add(new RadioModel(
      false,
      Padding(
        padding: const EdgeInsets.only(left:10.0),
        child: Container(
          height: 41,
          width: 53,
          child: Image.asset(
            App.Mastercard,
            fit: BoxFit.contain,
          ),
        ),
      ),
    ));
    sampleData.add(new RadioModel(
      false,
      Padding(
        padding: const EdgeInsets.only(left:10.0),
        child: Row(
          children: [
            Image.asset(
              App.cil_bank,
              fit: BoxFit.contain,
              height: 35,
              width: 35,
            ),
            SizedBox(
              width: 10,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                text: StringRes.BankAccount, fontSize: 14, textColor: bgColor),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return WillPopScope(
      onWillPop: (){
        return widget. callBackIndex(0);
      },
      child: new Scaffold(
        backgroundColor: bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            TextStyleRes.textUbuntuStyleFont2(
                text: "Payment Options", fontSize: 12, textColor: txtColor),
            SizedBox(
              height: 10,
            ),
            Container(
              color: txtDescriptionColor,
              height: getDeviceHeight(context) / 1.8,
              width: getDeviceWidth(context) / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  new ListView.builder(
                    itemCount: sampleData.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 70,
                        child: new InkWell(
                          //highlightColor: Colors.red,
                          // splashColor: Colors.blueAccent,
                          onTap: () {
                            setState(() {
                              sampleData
                                  .forEach((element) => element.isSelected = false);
                              sampleData[index].isSelected = true;
                            });
                          },
                          child: new RadioItem(sampleData[index]),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommonWidget.squareButton(
                        containerColor: widget.select != 0 ? bgColor : btnColor,
                        fontSize: 12.0,
                        height: 30.0,
                        width: 80.0,
                        text: StringRes.Cancel,
                        textColor: widget.select != 0 ? txtColor : txtColor,
                        onTap: () {
                          setState(() {
                            widget.select = 0;
                            widget.callBackIndex(0);
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CommonWidget.squareButton(
                        containerColor: widget.select != 1 ? bgColor : btnColor,
                        fontSize: 12.0,
                        height: 30.0,
                        width: 80.0,
                        text: StringRes.Submit,
                        textColor: widget.select != 1 ? txtColor : txtColor,
                        onTap: () {
                          setState(() {
                            widget.select = 1;
                            widget.callBackIndex(2);
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:4,right: 16),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
             height: 120,
            // margin: new EdgeInsets.only(left: 10.0),
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
