import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/inProgresstournament/widgets/statkeepers.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/joinTournamnet/widgets/playoff.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/joinTournamnet/widgets/results.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/joinTournamnet/widgets/seasons.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/container_button.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/info.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/prize.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/teams.dart';

import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/text.dart';
part 'widgets/body.dart';

class InProgressTornamentScreen extends StatelessWidget {
  const InProgressTornamentScreen({Key? key}) : super(key: key);

  static String id = "inprogresstournament_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          "Tournament",
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
