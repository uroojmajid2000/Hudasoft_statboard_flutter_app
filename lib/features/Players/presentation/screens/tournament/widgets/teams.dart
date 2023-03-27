import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/teamscard.dart';

class Teams extends StatefulWidget {
  const Teams({Key? key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      padding: EdgeInsets.all(20),
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
    );
  }
}
