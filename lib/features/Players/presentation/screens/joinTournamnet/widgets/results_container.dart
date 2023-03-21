import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/matches.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/vertical_line.dart';

import 'dart:math';

class ResultsContainer extends StatelessWidget {
  final String teamName;
  const ResultsContainer({super.key, required this.teamName});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final color = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    return Container(
      width: double.infinity,
      height: 206.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 6,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    // backgroundColor: Color(0xff5642a9),
                    backgroundColor: color,
                    radius: 20,
                    child: Text(
                      teamName.substring(0, 1),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    teamName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/person.svg',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    // MyText.simpleblueText("15"),
                    Text(
                      "15",
                      style: TextStyle(
                        color: Color(0xff00b0f0),
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 12,
                ),
                Matches(
                  text: "Won",
                  value: "32",
                  valueColor: Color(0xff00dd3e),
                ),
                VerticalLine(),
                Matches(
                  text: "LOSS",
                  value: "05",
                  valueColor: Color(0xffeb4335),
                ),
                VerticalLine(),
                Matches(
                  text: "TIE",
                  value: "02",
                  valueColor: Color(0xff787777),
                ),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 100,
                height: 39.29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.91),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff67075f), Color(0xff9d366f)],
                  ),
                ),
                child: Center(
                  child: Text(
                    "1st Place",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
