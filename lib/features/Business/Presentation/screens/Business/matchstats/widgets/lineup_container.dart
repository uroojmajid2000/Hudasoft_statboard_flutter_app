import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/matchstats/widgets/playersldetails.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/matchstats/widgets/playersldetailsName.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';


class LineUpContainer extends StatelessWidget {
  final Color color;
  final String alphabet;
  final String text;
  const LineUpContainer({
    super.key,
    required this.color,
    required this.alphabet,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 365,
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
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          CircleAvatar(
              backgroundColor: color,
              radius: 15,
              child: Text(
                // "T",
                alphabet,
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
            // "Tornado",
            text,
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          PlayersDetails(),
          Divider(),
          PlayersDetailsName(
            text: "Elijah Oliver",
            number: '1',
            image: 'assets/images/circleavatar_image.png',
          ),
          Divider(),
          PlayersDetailsName(
            text: "James Karl",
            number: '2',
            image: 'assets/images/michel.png',
          ),
          Divider(),
          PlayersDetailsName(
            text: "John Michael",
            number: '3',
            image: 'assets/images/robert.png',
          ),
          Divider(),
          PlayersDetailsName(
            text: "Robert John",
            number: '4',
            image: 'assets/images/circleavatar_image.png',
          ),
          Divider(),
          PlayersDetailsName(
            text: "James Karl",
            number: '5',
            image: 'assets/images/robert.png',
          ),
        ],
      ),
    );
  }
}
