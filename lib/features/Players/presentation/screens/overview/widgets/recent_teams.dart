import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../../../../../shared/routes/navigate.dart';
import '../../allteams/all_teams.dart';

class RecentTeams extends StatelessWidget {
  const RecentTeams({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigate.to(context, AllTeams.id),
      child: Container(
        width: 329.33,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
                  SvgPicture.asset('assets/icons/tornado.svg'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText.simpleblueText('Tornado'),
                            MyText.simplegreyText(
                              "Offical",
                            )
                          ]),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/people.svg'),
                      SizedBox(
                        width: 3,
                      ),
                      MyText.simpleblueText(
                        "15",
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/venue.svg'),
                      SizedBox(width: 8),
                      MyText.simpleblueText(
                        "Football",
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/locationblueicon.svg'),
                      SizedBox(width: 8),
                      MyText.simpleblueText(
                        "California Stadium",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/michel.png',
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
                              "Statskeeper",
                            ),
                            MyText.simpleblackText(
                              "Michael John",
                            ),
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
