import 'package:flutter/material.dart';
import 'upcoming_tournaments.dart';

class UpcomingTournamentsList extends StatelessWidget {
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
            child: UpcomingTournaments(
              name: "California Gym Premier League",
              branchName: "California Stadium",
              startDateTime: "25 Sep 2022",
              endDateTime: "25 Sep 2022",
              teamCapacity: '16',
              statkeeperImage: 'assets/images/manimage.png',
              createdBy: "Elijah Oliver",
              activityIcon: 'assets/icons/arrow.svg',
              status: "Upcoming",
            ),
          );
        },
      ),
    );
  }
}
