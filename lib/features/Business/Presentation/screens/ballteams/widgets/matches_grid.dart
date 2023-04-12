import 'package:flutter/material.dart';
import 'recentmatches_teams.dart';

class MatchesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   // height: 157.75,
        //   child:
        Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: RecentMatchesTeams(),
          );
        },
      ),
    );
    // );
  }
}
