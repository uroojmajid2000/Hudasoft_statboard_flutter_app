import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  final String text;
  final String value;
  final Color valueColor;

  Matches(
      {super.key,
      required this.text,
      required this.value,
      required this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 32,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
