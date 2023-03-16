import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TagsImage extends StatelessWidget {
  final String tagname;
  const TagsImage({super.key, required this.tagname});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff00b0f0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tagname,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
