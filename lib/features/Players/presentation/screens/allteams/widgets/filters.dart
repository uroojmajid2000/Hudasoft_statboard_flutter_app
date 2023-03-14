import 'package:flutter/cupertino.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 33,
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
                "Recent Matches",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xfff7fcf8),
                  fontSize: 14,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xff8e8e8e),
              width: 1,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 6,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Players",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff8e8e8e),
                  fontSize: 14,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
