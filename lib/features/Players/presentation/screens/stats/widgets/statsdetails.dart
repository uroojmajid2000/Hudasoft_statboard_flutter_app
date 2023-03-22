
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../shared/widgets/text.dart';
import '../../events/widgets/matchescontainer.dart';

class StatsDetails extends StatelessWidget {
  const StatsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
        ),
        SvgPicture.asset('assets/images/football.svg'),
        MyText.simplegreyText(
          "CALIFORNIA STADIUM 25 SEP 10 AM",
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TornadoVsStalion(),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "MATCH SUMMARY - Tornado won the match. ",
          style: TextStyle(
            color: Color(0xff4d4d4d),
            fontSize: 12,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/michel.png',
                width: 30,
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText.simplegreyText(
                          "Statskeeper",
                        ),
                        MyText.simpleblackText(
                          "Michael John",
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }}