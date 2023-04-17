import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/widgets/activebutton_container.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesedit/venuesedit_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesprofile/venuesprofile_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import '../../../../../../shared/widgets/text.dart';

class VenuesProfileContainer extends StatelessWidget {
  final String text;
  const VenuesProfileContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigate.to(context, VenueEditScreen.id),
        child: Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/locationblueicon.svg'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            // "Venue 1",
                            text,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/people.svg'),
                          SizedBox(
                            width: 3,
                          ),
                          MyText.simpleblueText("15"),
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Statskeeper",
                      style: TextStyle(
                        color: Color(0xff6f6d6d),
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/avatarimage.png',
                        ),
                        radius: 15,
                      ),
                    ],
                  ),
                  Stack(children: [
                    Row(
                      children: [
                        Container(
                          // width: 44.24,
                          // height: 44.24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Colors.white,
                          ),

                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/avatarimage.png',
                            ),
                            radius: 15,
                          ),
                        ),

                        // CircleAvatar(
                        //   backgroundImage: AssetImage(
                        //     'assets/images/avatarimage.png',
                        //   ),
                        //   radius: 15,
                        // ),
                      ],
                    ),
                    Positioned(
                      left: 25,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/michel.png',
                        ),
                        radius: 15,
                      ),
                    ),
                    Positioned(
                      left: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/robert.png',
                        ),
                        radius: 15,
                      ),
                    ),
                    Positioned(
                        left: 80,
                        top: 10,
                        child: Center(
                          child: Text(
                            "+5 more",
                            style: TextStyle(
                              color: Color(0xff646464),
                              fontSize: 10,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ))
                  ])
                ])
              ]),
            )));
  }
}
