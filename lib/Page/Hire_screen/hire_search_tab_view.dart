

import 'package:flutter/material.dart';
import 'package:kinoverse/Page/Hire_screen/hire_searchbar.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

import 'customfilmaker.dart';
class HireSearchTabView extends StatefulWidget {
  @override
  _HireSearchTabViewState createState() => _HireSearchTabViewState();
}

class _HireSearchTabViewState extends State<HireSearchTabView> {
  TextEditingController searchController = TextEditingController();
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return SingleChildScrollView(
      child: Column(
        children: [
          HireSearchBar(searchController:searchController),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextStyleRes.textUbuntuStyleFont2(
                    textColor: txtColor,
                    text: StringRes.Category,
                    fontSize: 10),
                SizedBox(
                  width: 10,
                ),
                CommonWidget.squareButton(
                    fontSize: 10.0,
                    textColor: bgColor,
                    containerColor: txtDescriptionColor,
                    text: StringRes.Editor,
                    height: 25.0,
                    width: 65.0,
                    onTap: () {}),
                SizedBox(
                  width: 10,
                ),
                CommonWidget.squareButton(
                    fontSize: 10.0,
                    textColor: bgColor,
                    containerColor: txtDescriptionColor,
                    text: StringRes.PostEditing,
                    height: 25.0,
                    width: 90.0,
                    onTap: () {}),
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                  App.closeicon,
                  height: 17,
                  width: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                TextStyleRes.textUbuntuStyleFont2(
                    textColor: txtColor,
                    text: StringRes.ClearFilters,
                    fontSize: 10),
              ],
            ),
          ),
          Container(
            height: getDeviceHeight(context) / 1.650,
            child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return ContainerFilmMakker(
                    index: index,
                    rating: rating,
                    isViewMore: false,
                  );
                }),
          )
        ],
      ),
    );
  }


}
