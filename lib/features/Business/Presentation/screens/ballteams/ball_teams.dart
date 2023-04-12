import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/baddteams/baddteams_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/beditteams/beditteams_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/detail_of_team.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/filters.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/profile_container.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/recentmatches_teams.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/teams_container.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';

import '../../../../../resources/colors.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class BAllTeams extends StatelessWidget {
  const BAllTeams({Key? key}) : super(key: key);

  static String id = "ball_teams";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Teams',
      currentTab: 3,
      body:
          //  const SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          //   child:
          Body(),
      // ),
    );
  }
}
