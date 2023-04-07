import 'package:flutter/material.dart';
import 'upcoming_tournaments.dart';

class UpcomingTournamentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: UpcomingTournaments(),
          );
        },
      ),
    );
  }
}
