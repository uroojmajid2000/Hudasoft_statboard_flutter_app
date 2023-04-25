import 'package:flutter/material.dart';
import 'upcoming_tournaments.dart';

class UpcomingTournamentsList extends StatelessWidget {
  List<UpcomingTournaments> UpcomingTournamentsData = [
    UpcomingTournaments(
      name: "California Gym Premier League",
      branchName: "Vengas01",
      startDateTime: "25 Sep 2022",
      endDateTime: "25 Sep 2022",
      teamCapacity: '16',
      createdBy: "ammar+2@hudasoft.com",
      statkeeperImage: 'assets/images/manimage.png',
      activityIcon: 'assets/icons/arrow.svg',
      status: "Upcoming",
    ),
    UpcomingTournaments(
      name: "Footsall Sports League",
      branchName: "Vengas01",
      startDateTime: "25 Sep 2022",
      endDateTime: "25 Sep 2022",
      teamCapacity: '16',
      createdBy: "ammar+2@hudasoft.com",
      statkeeperImage: 'assets/images/manimage.png',
      activityIcon: 'assets/icons/arrow.svg',
      status: "Upcoming",
    ),
    UpcomingTournaments(
      name: "Rugby Sports League",
      branchName: "Vengas01",
      startDateTime: "25 Sep 2022",
      endDateTime: "25 Sep 2022",
      teamCapacity: '16',
      createdBy: "ammar+2@hudasoft.com",
      statkeeperImage: 'assets/images/manimage.png',
      activityIcon: 'assets/icons/arrow.svg',
      status: "Upcoming",
    ),
    UpcomingTournaments(
      name: "Pakistan Super League",
      branchName: "Vengas01",
      startDateTime: "25 Sep 2022",
      endDateTime: "25 Sep 2022",
      teamCapacity: '16',
      createdBy: "ammar+2@hudasoft.com",
      statkeeperImage: 'assets/images/manimage.png',
      activityIcon: 'assets/icons/arrow.svg',
      status: "Upcoming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: UpcomingTournamentsData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: UpcomingTournaments(
              name: UpcomingTournamentsData[index].name,
              branchName: UpcomingTournamentsData[index].branchName,
              startDateTime: UpcomingTournamentsData[index].startDateTime,
              endDateTime: UpcomingTournamentsData[index].endDateTime,
              teamCapacity: UpcomingTournamentsData[index].teamCapacity,
              statkeeperImage: UpcomingTournamentsData[index].statkeeperImage,
              createdBy: UpcomingTournamentsData[index].createdBy,
              activityIcon: UpcomingTournamentsData[index].activityIcon,
              status: UpcomingTournamentsData[index].status,
            ),
          );
        },
      ),
    );
  }
}
