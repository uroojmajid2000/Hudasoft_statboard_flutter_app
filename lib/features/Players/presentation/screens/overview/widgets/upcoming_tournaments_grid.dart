import 'package:flutter/material.dart';
import 'upcoming_tournaments.dart';

// class UpcomingTournamentsList extends StatelessWidget {
//   List<UpcomingTournaments> UpcomingTournamentsData = [
//     UpcomingTournaments(
//       name: "California Gym Premier League",
//       branchName: "Vengas01",
//       startDateTime: "25 Sep 2022",
//       endDateTime: "25 Sep 2022",
//       teamCapacity: '16',
//       createdBy: "ammar+2@hudasoft.com",
//       statkeeperImage: 'assets/images/manimage.png',
//       activityIcon: 'assets/icons/arrow.svg',
//       status: "Upcoming",
//     ),
//     UpcomingTournaments(
//       name: "Footsall Sports League",
//       branchName: "Vengas01",
//       startDateTime: "25 Sep 2022",
//       endDateTime: "25 Sep 2022",
//       teamCapacity: '16',
//       createdBy: "ammar+2@hudasoft.com",
//       statkeeperImage: 'assets/images/manimage.png',
//       activityIcon: 'assets/icons/arrow.svg',
//       status: "Upcoming",
//     ),
//     UpcomingTournaments(
//       name: "Rugby Sports League",
//       branchName: "Vengas01",
//       startDateTime: "25 Sep 2022",
//       endDateTime: "25 Sep 2022",
//       teamCapacity: '16',
//       createdBy: "ammar+2@hudasoft.com",
//       statkeeperImage: 'assets/images/manimage.png',
//       activityIcon: 'assets/icons/arrow.svg',
//       status: "Upcoming",
//     ),
//     UpcomingTournaments(
//       name: "Pakistan Super League",
//       branchName: "Vengas01",
//       startDateTime: "25 Sep 2022",
//       endDateTime: "25 Sep 2022",
//       teamCapacity: '16',
//       createdBy: "ammar+2@hudasoft.com",
//       statkeeperImage: 'assets/images/manimage.png',
//       activityIcon: 'assets/icons/arrow.svg',
//       status: "Upcoming",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 157.75,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: UpcomingTournamentsData.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.only(right: 8.0),
//             child: UpcomingTournaments(
//               name: UpcomingTournamentsData[index].name,
//               branchName: UpcomingTournamentsData[index].branchName,
//               startDateTime: UpcomingTournamentsData[index].startDateTime,
//               endDateTime: UpcomingTournamentsData[index].endDateTime,
//               teamCapacity: UpcomingTournamentsData[index].teamCapacity,
//               statkeeperImage: UpcomingTournamentsData[index].statkeeperImage,
//               createdBy: UpcomingTournamentsData[index].createdBy,
//               activityIcon: UpcomingTournamentsData[index].activityIcon,
//               status: UpcomingTournamentsData[index].status,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:http/http.dart' as http;
import 'dart:convert';

class UpcomingTournamentsList extends StatefulWidget {
  @override
  _UpcomingTournamentsListState createState() =>
      _UpcomingTournamentsListState();
}

class _UpcomingTournamentsListState extends State<UpcomingTournamentsList> {
  List<dynamic> tournamentList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiNjciLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJhbW1hcisyQGh1ZGFzb2Z0LmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlN0YXRrZWVwZXIiLCJleHAiOjE2ODIwMjQ1MzAsImlzcyI6Imh0dHBzOi8vbG9jYWxob3N0OjcyNDQvIiwiYXVkIjoiVXNlciJ9.I2bal2aWUgQgycxwxlT1b9pwJTNrdv70CdfoRinqraM'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'http://ec2-3-12-238-2.us-east-2.compute.amazonaws.com:8002/api/Tournament/GetAllTournament'));
    request.body = json.encode({"pageNumber": "1", "pageSize": "4"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print("response");
    print(response.statusCode);
    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      setState(() {
        tournamentList = json.decode(data)['data'];
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load tournaments');
      print("response failds:");
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173,
      child: isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            )
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tournamentList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: UpcomingTournaments(
                    name: tournamentList[index]['name'],
                    branchName: tournamentList[index]['branchName'],
                    startDateTime: tournamentList[index]['startDateTime']
                        .toString()
                        .substring(0, 10)
                        .split("-")
                        .reversed
                        .join("-"),
                    endDateTime: tournamentList[index]['endDateTime']
                        .toString()
                        .substring(0, 10)
                        .split("-")
                        .reversed
                        .join("-"),
                    teamCapacity:
                        tournamentList[index]['teamCapacity'].toString(),
                    statkeeperImage: (tournamentList[index]['statkeeperImage']
                                .toString() ==
                            'null')
                        ? 'assets/images/manimage.png'
                        : tournamentList[index]['statkeeperImage'].toString(),
                    createdBy: tournamentList[index]['createdBy'],
                    activityIcon:
                        (tournamentList[index]['activityIcon'].toString() ==
                                'null')
                            ? 'assets/icons/arrow.svg'
                            : tournamentList[index]['activityIcon'].toString(),
                    status: tournamentList[index]['status'],
                  ),
                );
              },
            ),
    );
  }
}
