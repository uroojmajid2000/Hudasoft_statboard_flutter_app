import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/viewallTournament/widgets/viewall_tournaments.dart';

import '../../../../../shared/widgets/search_bar.dart';

part 'widgets/body.dart';

class ViewallTornamentScreen extends StatelessWidget {
  const ViewallTornamentScreen({Key? key}) : super(key: key);

  static String id = "viewall_tournament_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          "Tournaments",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
