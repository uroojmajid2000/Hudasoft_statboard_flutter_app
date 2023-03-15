import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/detail_of_team.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/filters.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/recent_matches.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/teams_container.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class AllTeams extends StatelessWidget {
  const AllTeams({Key? key}) : super(key: key);

  static String id = "all_teams";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Teams',
      currentTab: 3,
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Body(),
      ),
    );
  }
}