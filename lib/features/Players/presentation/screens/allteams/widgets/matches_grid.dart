import 'package:flutter/material.dart';
import 'recentmatches_teams.dart';

class MatchesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   // height: 157.75,
        //   child:
        ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: RecentMatchesTeams(),
        );
      },
    );
    // );
  }
}
