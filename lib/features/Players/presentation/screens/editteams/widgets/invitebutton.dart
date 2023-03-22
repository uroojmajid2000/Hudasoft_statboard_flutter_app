
import 'package:flutter/material.dart';

class InvitecontainerButton extends StatelessWidget {
  const InvitecontainerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff00b0f0),
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
    "Invite",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xfffafdfa),
      fontSize: 14,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
    ),
            ),
          ],
        ),
      );
  }
}
