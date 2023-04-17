import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';
import '../../tournament/widgets/container_button.dart';
import 'invitebutton.dart';

class CancelFiends extends StatelessWidget {
  final String img;
  final String text;
  const CancelFiends({
    super.key,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(
        // 'assets/images/michel.png',
        img,
        width: 40,
        height: 40,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyText.labelText(
            // "Elijah Oliver",
            text,
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      GestureDetector(
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xff00b0f0),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 8,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Cancel Invite",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff00b0f0),
                fontSize: 14,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ))
    ]);
  }
}
