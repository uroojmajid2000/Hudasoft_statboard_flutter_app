

import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';


class TeamContainer extends StatelessWidget {
    final Color color;
  final String alphabet;
  final String text;
  const TeamContainer({
    super.key, required this.color, required this.alphabet, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 80,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor:color,
                radius: 15,
                child: Text(
                  // "T",
                  alphabet,
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
              // "Tornado",
              text,
            ),
          ],
        ));
  }
}
