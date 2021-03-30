import 'package:flutter/material.dart';
import 'package:kinoverse/Page/Hire_screen/star_rate.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';
import 'package:kinoverse/common/TextStyleRes.dart';
import 'package:kinoverse/common/common_widget.dart';

class ContainerFilmMakker extends StatefulWidget {
  double rating;
  bool isViewMore;
  int index;

  ContainerFilmMakker({Key key, this.rating, this.isViewMore, this.index})
      : super(key: key);

  @override
  _ContainerFilmMakkerState createState() => _ContainerFilmMakkerState();
}

class _ContainerFilmMakkerState extends State<ContainerFilmMakker> {
  bool isSubscribe = true;
  bool isinviteTojob = false;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleRes.textUbuntuStyleFont2(
                              textColor: txtColor,
                              text: "Sheila Anastasia",
                              fontSize: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: TextStyleRes.textUbuntuStyleFont2(
                                textColor: txtDescriptionColor,
                                text: "Editor / Mid Editing - Post Editing",
                                fontSize: 8),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
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
                          ),
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
                        text: StringRes.TopRated,
                        onTap: () {},
                        imageName: App.badge,
                        width: 89.0,
                        height: 25.0)
                  ],
                ),
                Row(
                  children: [
                    TextStyleRes.textUbuntuStyleFont2(
                        textColor: txtColor, text: "\$75.00", fontSize: 10),
                    TextStyleRes.textUbuntuStyleFont2(
                        textColor: txtDescriptionColor,
                        text: "/hour",
                        fontSize: 10),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                TextStyleRes.textUbuntuStyleFont2(
                    maxLine: 3,
                    textColor: txtColor,
                    text: StringRes.experience,
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
                          text: StringRes.Editing,
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
                          text: StringRes.MidEditing,
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
                          text: StringRes.PostEditing,
                          containerColor: bgColor,
                        ),
                      ),
                      CommonWidget.squareWithIconButton(
                        height: 25.0,
                        width: 90.0,
                        borderColor: txtDescriptionColor,
                        textColor: txtColor,
                        fontSize: 10.0,
                        text: StringRes.AdobePremiere,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StarRating(
                      rating: widget.rating,
                      onRatingChanged: (rating) =>
                          setState(() => this.widget.rating = rating),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        App.jobsuccess,
                        height: 16,
                        width: 13,
                        color: btnColor,
                      ),
                    ),
                    TextStyleRes.textUbuntuStyleFont2(
                        text: StringRes.JobSuccess,
                        fontSize: 12,
                        textColor: txtDescriptionColor),
                    Spacer(),
                    TextStyleRes.textUbuntuStyleFont2(
                        text: "\$5k+" + " Earned",
                        fontSize: 12,
                        textColor: txtDescriptionColor),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                widget.isViewMore
                    ? TextStyleRes.textUbuntuStyleFont2(
                        maxLine: 3,
                        textColor: txtColor,
                        text:
                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less....",
                        fontSize: 10)
                    : SizedBox(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isViewMore = !widget.isViewMore;
                    });
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: TextStyleRes.textUbuntuStyleFont2(
                            text: StringRes.viewMore,
                            fontSize: 12,
                            textColor: widget.isViewMore
                                ? btnColor
                                : txtDescriptionColor),
                      ),
                      Icon(
                        widget.isViewMore
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color:
                            widget.isViewMore ? btnColor : txtDescriptionColor,
                        size: 12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: getDeviceHeight(context) / 20,
          width: getDeviceWidth(context),
          color: backContainerColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSubscribe = !isSubscribe;
                  });
                },
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        App.subscribe,
                        height: 16,
                        width: 13,
                        color: isSubscribe ? btnColor : txtDescriptionColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextStyleRes.textUbuntuStyleFont2(
                          text: StringRes.Subscribe,
                          fontSize: 10,
                          textColor:
                              isSubscribe ? btnColor : txtDescriptionColor),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isinviteTojob = !isinviteTojob;
                  });
                },
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        App.inviteTojob,
                        height: 16,
                        width: 13,
                        color: isinviteTojob ? btnColor : txtDescriptionColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextStyleRes.textUbuntuStyleFont2(
                        text: StringRes.InvitetoJob,
                        fontSize: 10,
                        textColor:
                            isinviteTojob ? btnColor : txtDescriptionColor,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFav = !isFav;
                  });
                },
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        App.fav,
                        height: 16,
                        width: 13,
                        color: isFav ? btnColor : txtDescriptionColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextStyleRes.textUbuntuStyleFont2(
                        text: "Favorite",
                        fontSize: 10,
                        textColor: isFav ? btnColor : txtDescriptionColor,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// class HireFilmMaker extends StatefulWidget {
//   @override
//   _HireFilmMakerState createState() => _HireFilmMakerState();
// }
//
// class _HireFilmMakerState extends State<HireFilmMaker> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: getDeviceHeight(context)/2,
//       width: getDeviceWidth(context),
//       color: bgColor,
//       child: Column(children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   bottom: 8.0, top: 8),
//               child: CircleAvatar(
//                 backgroundColor: btnColor,
//                 radius: 21,
//                 child: CircleAvatar(
//                   radius: 20,
//                   backgroundImage: AssetImage(App.profile),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Column(
//                 children: [
//                   TextStyleRes.textUbuntuStyleFont2(
//                       textColor: txtColor,
//                       text: "Sheila Anastasia",
//                       fontSize: 10),
//                   Padding(
//                     padding:
//                     const EdgeInsets.only(top: 4.0),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 10,
//                           height: 10,
//                           child: Image.asset(
//                             App.location,
//                             color: txtDescriptionColor,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         TextStyleRes.textUbuntuStyleFont2(
//                             textColor: txtDescriptionColor,
//                             text: "San Fransisco, USA",
//                             fontSize: 8),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Spacer(),
//             CommonWidget.squareWithIconButton(
//                 textColor: txtColor,
//                 containerColor: btnColor,
//                 fontSize: 12.0,
//                 borderColor: btnColor,
//                 sizeboxWidth: 8.0,
//                 text: StringRes.PayFilmaker,
//                 onTap: () {},
//                 width: 120.0,
//                 height: 30.0)
//           ],
//         ),
//       ],),
//     );
//   }
// }
