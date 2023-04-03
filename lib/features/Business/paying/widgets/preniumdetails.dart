import 'package:flutter/material.dart';

class PreniumDetails extends StatelessWidget {
  final String text;
  const PreniumDetails({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffD4F3FF),
              child: Image.asset('assets/icons/Icon.png')),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              // "Access to all basic features",
              text,
              style: TextStyle(
                color: Color(0xff667084),
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
