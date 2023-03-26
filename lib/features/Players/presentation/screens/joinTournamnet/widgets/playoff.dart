import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/teamscard.dart';

class PlayOff extends StatefulWidget {
  const PlayOff({super.key});

  @override
  State<PlayOff> createState() => _PlayOffState();
}

class _PlayOffState extends State<PlayOff> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamsCard(
                alphabet: 'T',
                color: Color(0xff5642a9),
                text: "Tornado",
              ),
              TeamsCard(
                alphabet: 'S',
                color: Color(0xffEF4C53),
                text: "Stallion",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamsCard(
                alphabet: 'T',
                color: Color(0xff5642a9),
                text: "Tornado",
              ),
              TeamsCard(
                alphabet: 'S',
                color: Color(0xffEF4C53),
                text: "Stallion",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamsCard(
                alphabet: 'T',
                color: Color(0xff5642a9),
                text: "Tornado",
              ),
              TeamsCard(
                alphabet: 'S',
                color: Color(0xffEF4C53),
                text: "Stallion",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
