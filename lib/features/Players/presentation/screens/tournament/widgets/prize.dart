import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/prizecard.dart';

class Prize extends StatefulWidget {
  const Prize({super.key});

  @override
  State<Prize> createState() => _PrizeState();
}

class _PrizeState extends State<Prize> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          PrizeCard(
              rank: "1st Place",
              prize: "\$4000",
              grdientcolorOne: Color(0xff67075f),
              grdientcolorTwo: Color(0xff9d366f)),
          SizedBox(
            height: 20,
          ),
          PrizeCard(
              rank: "2nd Place",
              prize: "\$2000",
              grdientcolorOne: Color(0xffff0361),
              grdientcolorTwo: Color(0xffcd004c)),
          SizedBox(
            height: 20,
          ),
          PrizeCard(
              rank: "3rd Place",
              prize: "\$1000",
              grdientcolorOne: Color(0xff964cdd),
              grdientcolorTwo: Color(0xff5702ac)),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
