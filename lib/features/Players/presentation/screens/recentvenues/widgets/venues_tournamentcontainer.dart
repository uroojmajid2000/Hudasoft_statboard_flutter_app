import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../../../../../shared/routes/navigate.dart';
import '../../tournament/tournament_screen.dart';

class VenuesTournamentsContainer extends StatelessWidget {
  VenuesTournamentsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigate.to(context, TornamentScreen.id),
      child: Container(
        width: 329.33,
        height: 157.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(
          //   color: Color(0xff00b0f0),
          //   width: 2,
          // ),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/football.svg'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText.simpleblackText(
                                "California Gym Premier League"),
                            MyText.simplegreyText(
                              "California Stadium",
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyText.simpleblackText(
                          "25 Sep 2022",
                        ),
                        MyText.simplegreyText(
                          "Start Date",
                        ),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyText.simpleblackText(
                          "25 Sep 2022",
                        ),
                        MyText.simplegreyText(
                          "Start Date",
                        ),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyText.simpleblackText(
                          "16",
                        ),
                        MyText.simplegreyText(
                          "Teams Capacity",
                        ),
                      ]),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/manimage.png',
                    width: 30,
                    height: 30,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText.simplegreyText(
                              "Created by",
                            ),
                            MyText.simpleblackText(
                              "Elijah Oliver",
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
