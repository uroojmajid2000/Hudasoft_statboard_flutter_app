import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/stats/stats_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../matchstats/matchstats_screen.dart';

class RecentMatches extends StatelessWidget {
  final String startTime;
  final String currentActivity;
  final String branchName;
  final String statkeeperImage;
  final String statskeeperName;
  final String status;
  final String statusIcon;

  const RecentMatches(
      {super.key,
      required this.startTime,
      required this.currentActivity,
      required this.branchName,
      required this.statkeeperImage,
      required this.statskeeperName,
      required this.status,
      required this.statusIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                SvgPicture.asset('assets/images/football.svg'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText.simplegreyText(
                            // "25 SEP 10 AM",
                            startTime,
                          ),
                          MyText.simpleblackText(
                            // "Football",
                            currentActivity,
                          ),
                        ]),
                  ),
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      // 'assets/icons/award.svg'
                      statusIcon,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      // "WIN",
                      status,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff00a22d),
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff00b0f0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/location_icon.svg'),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        // "California Stadium",
                        branchName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
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
                  // 'assets/images/michel.png',
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
                            "Statskeeper",
                          ),
                          MyText.simpleblackText(
                              // "Michael John",
                              statskeeperName),
                        ]),
                  ),
                ),
                SizedBox(
                  width: 83,
                  height: 35,
                  child: GestureDetector(
                    // onTap: () => Navigate.to(context, MatchStatsScreen.id),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigate.to(context, StatsScreen.id);
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text('View'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
