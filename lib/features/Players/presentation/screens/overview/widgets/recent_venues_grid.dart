// import 'package:flutter/material.dart';
// import 'package:statboard_flutter_app/shared/routes/navigate.dart';
// import '../../recentvenues/recentvenues_screen.dart';
// import 'recent_venues.dart';

// class RecentVenuesList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 157.75,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 4,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.only(right: 8.0),
//             child: GestureDetector(
//                 onTap: () => Navigate.to(context, RecentVenuesScreen.id),
//                 child: RecentVenues(
//                   branchName: 'Vengas01',
//                   venueName: 'ViewLake',
//                   currentActivity: "Regulation Basketball",
//                   statskeeperName: "mToufiq",
//                   activePlayers: '5',
//                 )),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_venues.dart';
import 'dart:convert';

import 'package:statboard_flutter_app/features/Players/presentation/screens/recentvenues/recentvenues_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';

class RecentVenuesList extends StatefulWidget {
  @override
  _RecentVenuesListState createState() => _RecentVenuesListState();
}

class _RecentVenuesListState extends State<RecentVenuesList> {
  List<dynamic> recentvenuesList = [];

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
            'http://ec2-3-12-238-2.us-east-2.compute.amazonaws.com:8002/api/Venue/GetVenueEventList'));
    request.body = json.encode({"pageNumber": "1", "pageSize": "10"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print("response");
    print(response.statusCode);
    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      setState(() {
        recentvenuesList = json.decode(data)['data'];
      });
    } else {
      print("response failds:");
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recentvenuesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: GestureDetector(
                onTap: () => Navigate.to(context, RecentVenuesScreen.id),
                child: RecentVenues(
                  branchName: recentvenuesList[index]['branchName'].toString(),
                  venueName: recentvenuesList[index]['venueName'].toString(),
                  currentActivity:
                      recentvenuesList[index]['currentActivity'].toString(),
                  statskeeperName:
                      recentvenuesList[index]['statskeeperName'].toString(),
                  activePlayers:
                      recentvenuesList[index]['activePlayers'].toString(),
                )),
          );
        },
      ),
    );
  }
}
