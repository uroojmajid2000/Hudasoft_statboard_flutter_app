import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/all_teams.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/teams_container.dart';

import '../../../../../../shared/routes/navigate.dart';

class TeamsList extends StatelessWidget {
  final List<String> teamNames;

  TeamsList({required this.teamNames});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: teamNames.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () => Navigate.to(context, AllTeams.id),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TeamsContainer(teamName: teamNames[index]),
              ));
        },
      ),
    );
  }
}
