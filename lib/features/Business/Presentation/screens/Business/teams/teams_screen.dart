import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/teams_grid.dart';
import 'package:statboard_flutter_app/resources/colors.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../allteams/all_teams.dart';
import '../teamsdetails/teams_details.dart';

part 'widgets/body.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  static String id = "teams_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Teams',
      currentTab: 3,
      body:
        Body(),

    );
  }
}
