import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/Business/allteams/widgets/detail_of_team.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/Business/allteams/widgets/filters.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/Business/allteams/widgets/profile_container.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/Business/allteams/widgets/recentmatches_teams.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/Business/allteams/widgets/teams_container.dart';
import 'package:statboard_flutter_app/resources/colors.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../addteams/addteams_screen.dart';
import '../editteams/editteams_screen.dart';

part 'widgets/body.dart';

class AllTeams extends StatelessWidget {
  const AllTeams({Key? key}) : super(key: key);

  static String id = "all_teams";

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
