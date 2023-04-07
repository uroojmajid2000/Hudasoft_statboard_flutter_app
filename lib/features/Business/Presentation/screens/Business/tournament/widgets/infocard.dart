import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

class InfoCard extends StatelessWidget {
  final String imageIcon;
  final String stadium;
  final String location;
  const InfoCard(
      {super.key,
      required this.imageIcon,
      required this.stadium,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 45.59,
            height: 44.02,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 6,
                  offset: Offset(0, 0),
                ),
              ],
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(
              // 'assets/icons/stadium.svg'
              imageIcon,
            )),
        SizedBox(
          width: 13,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // "California Stadium",
                stadium,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              MyText.simpleText(
                  // "Court A, Court B",
                  location),
            ],
          ),
        )
      ],
    );
  }
}
