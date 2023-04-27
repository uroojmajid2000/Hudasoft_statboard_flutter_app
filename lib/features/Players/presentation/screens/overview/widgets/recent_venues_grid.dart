import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import '../../recentvenues/recentvenues_screen.dart';
import 'recent_venues.dart';

class RecentVenuesList extends StatelessWidget {
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
            child: GestureDetector(
                onTap: () => Navigate.to(context, RecentVenuesScreen.id),
                child: RecentVenues(
                  branchName: 'Vengas01',
                  venueName: 'ViewLake',
                  currentActivity: "Regulation Basketball",
                  statskeeperName: "mToufiq",
                  activePlayers: '5',
                )),
          );
        },
      ),
    );
  }
}
