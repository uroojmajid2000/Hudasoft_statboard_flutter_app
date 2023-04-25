import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/upcommingContainer.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../../../../../shared/routes/navigate.dart';
import '../../tournament/tournament_screen.dart';

class UpcomingTournaments extends StatelessWidget {
  final String name;
  final String branchName;
  final String startDateTime;
  final String endDateTime;
  final String teamCapacity;
  final String statkeeperImage;
  final String createdBy;
  final String activityIcon;
  final String status;

  UpcomingTournaments(
      {Key? key,
      required this.name,
      required this.branchName,
      required this.startDateTime,
      required this.endDateTime,
      required this.statkeeperImage,
      required this.activityIcon,
      required this.status, required this.teamCapacity, required this.createdBy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigate.to(context, TornamentScreen.id),
      child: Container(
        width: 329.33,
        height: 157.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xff00b0f0),
            width: 2,
          ),
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
                                // "California Gym Premier League"
                                name),
                            MyText.simplegreyText(branchName
                                // "California Stadium",
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
                            // "25 Sep 2022",
                            startDateTime),
                        MyText.simplegreyText(
                          "Start Date",
                        ),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyText.simpleblackText(
                            // "25 Sep 2022",
                            endDateTime),
                        MyText.simplegreyText(
                          "End Date",
                        ),
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyText.simpleblackText(
                            // "16",
                            teamCapacity),
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
                    // 'assets/images/manimage.png',
                    statkeeperImage,
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
                                // "Elijah Oliver",
                                createdBy)
                          ]),
                    ),
                  ),
                  UpcommingContainer(
                    activityIcon: activityIcon,
                    //  'assets/icons/arrow.svg',
                    status: status,
                    // "Upcoming",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
