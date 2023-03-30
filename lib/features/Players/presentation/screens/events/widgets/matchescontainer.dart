import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/stats/stats_screen.dart';

import '../../../../../../shared/routes/navigate.dart';
import '../../../../../../shared/widgets/text.dart';

class MatchesContainer extends StatelessWidget {
  const MatchesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigate.to(context, StatsScreen.id),
      child: Container(
        width: double.infinity,
        height: 150,
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              matchesVs(),
              SizedBox(
                height: 5,
              ),
              TornadoVsStalion(),
            ],
          ),
        ),
      ),
    );
  }
}

class TornadoVsStalion extends StatelessWidget {
  const TornadoVsStalion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Color(0xff5642a9),
                radius: 20,
                child: Text(
                  "T",
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
              "Tornado",
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: '5 ',
                style: TextStyle(
                  color: Color(0xff00A32E),
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: ': 2',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Container(
                  width: 65,
                  height: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xff00b0f0),
                      width: 1,
                    ),
                    color: Color(0x1900b0f0),
                  ),
                  child: Center(
                    child: Text(
                      "45 min",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff00b0f0),
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Color(0xffEF4C53),
                radius: 20,
                child: Text(
                  "S",
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
              "Stallion",
            ),
          ],
        ),
      ],
    );
  }
}

class matchesVs extends StatelessWidget {
  const matchesVs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/images/football.svg'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText.simplegreyText(
                    "25 SEP 10 AM- California Stadium",
                  ),
                  MyText.simpleblackText(
                    "Football",
                  ),
                ]),
          ),
        ),
        Text(
          "WIN",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff00a22d),
            fontSize: 12,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
