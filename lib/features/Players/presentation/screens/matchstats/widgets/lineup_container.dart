
import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/matchstats/widgets/playersldetails.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/matchstats/widgets/playersldetailsName.dart';

import '../../../../../../shared/widgets/text.dart';

class LineUpContainer extends StatelessWidget {
  const LineUpContainer({
    super.key,
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
              backgroundColor: Color(0xff5642a9),
              radius: 15,
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
          SizedBox(
            height: 5,
          ),
          Divider(),
          PlayersDetails(),
          Divider(),
          PlayersDetailsName(
            text: "Elijah Oliver",
            number: '1',
          ),
          Divider(),
          PlayersDetailsName(
            text: "James Karl",
            number: '2',
          ),
          Divider(),
          PlayersDetailsName(
            text: "John Michael",
            number: '3',
          ),
          Divider(),
          PlayersDetailsName(
            text: "Robert John",
            number: '3',
          ),
          Divider(),
          PlayersDetailsName(
            text: "James Karl",
            number: '4',
          ),
        ],
      ),
    );
  }
}
