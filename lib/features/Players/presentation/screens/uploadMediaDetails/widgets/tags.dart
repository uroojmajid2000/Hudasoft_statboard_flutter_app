import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tags extends StatelessWidget {
  final String text;
  const Tags({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff00b0f0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          SvgPicture.asset('assets/icons/clear_icon.svg'),
        ],
      ),
    );
  }
}
