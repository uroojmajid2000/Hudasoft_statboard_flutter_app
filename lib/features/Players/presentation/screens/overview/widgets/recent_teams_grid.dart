import 'package:flutter/material.dart';
import 'recent_teams.dart';

class RecentTeamsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: RecentTeams(),
          );
        },
      ),
    );
  }
}
