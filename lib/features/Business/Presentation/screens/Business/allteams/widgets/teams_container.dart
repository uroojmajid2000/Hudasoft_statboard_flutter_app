import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/teams/widgets/matches.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/teams/widgets/vertical_line.dart';


class AllTeamsContainer extends StatelessWidget {
  const AllTeamsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
