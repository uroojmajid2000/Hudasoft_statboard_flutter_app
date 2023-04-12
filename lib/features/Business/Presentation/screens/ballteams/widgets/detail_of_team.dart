import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';

class DetailsTeams extends StatelessWidget {
  const DetailsTeams({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
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
              height: 3,
            ),
            MyText.labelText(
              "Tornado",
            ),
            SizedBox(
              height: 2,
            ),
            MyText.simplegreyText(
              "Official",
            )
          ],
        ),
        Column(
          children: [
            MyText.labelText("15"),
            SizedBox(
              height: 2,
            ),
            MyText.simplegreyText(
              "Players",
            )
          ],
        ),
        Column(
          children: [
            MyText.labelText('25'),
            SizedBox(
              height: 2,
            ),
            MyText.simplegreyText(
              "Date Formed",
            )
          ],
        ),
        Column(
          children: [
            MyText.labelText('25/05/2022'),
            SizedBox(
              height: 2,
            ),
            MyText.simplegreyText(
              "Date Created",
            )
          ],
        ),
      ],
    );
  }
}
