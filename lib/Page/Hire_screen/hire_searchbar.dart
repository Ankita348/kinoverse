import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';

import '../../app.dart';

class HireSearchBar extends StatefulWidget {
  TextEditingController searchController;

  HireSearchBar({this.searchController});

  @override
  _HireSearchBarState createState() => _HireSearchBarState();
}

class _HireSearchBarState extends State<HireSearchBar> {

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 2.0, left: 10, top: 8),
            child: TextStyleRes.textUbuntuStyleFont2(
                text: "Search:", textColor: txtDescriptionColor, fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 4, top: 8),
            child: Container(
                width: MediaQuery.of(context).size.width / 1.7,
                height: MediaQuery.of(context).size.height / 20,
                decoration: BoxDecoration(
                    border: Border.all(color: txtDescriptionColor)),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 20,
                        child: TextFormField(
                          controller: widget.searchController,
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
                              hintText: StringRes.typeHear,
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
            padding: const EdgeInsets.only(right: 4.0, top: 9, left: 16),
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
              padding: const EdgeInsets.only(right: 4.0, top: 9),
              child: TextStyleRes.textUbuntuStyleFont2(
                textColor: txtDescriptionColor,
                fontSize: 10,
                text: StringRes.Filters,
              ))
        ],
      ),
    );
  }
}
