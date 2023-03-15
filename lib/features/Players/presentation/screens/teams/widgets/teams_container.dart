import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/matches.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/vertical_line.dart';

import '../../../../../../shared/widgets/text.dart';

class TeamsContainer extends StatelessWidget {
  const TeamsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 154,
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
                    backgroundColor: Color(0xff5642a9),
                    radius: 20,
                    child: Text(
                      "T",
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
                    "Tornado",
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
                Matches(
                  text: "Matches",
                  value: "32",
                  valueColor: Color(0xff00b0f0),
                ),
                VerticalLine(),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
