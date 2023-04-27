import 'package:flutter/material.dart';
import 'recent_matches.dart';

// class RecentMatchList extends StatelessWidget {
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
//             child: RecentMatches(),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:http/http.dart' as http;
import 'dart:convert';

class RecentMatchList extends StatefulWidget {
  @override
  _RecentMatchListState createState() => _RecentMatchListState();
}

class _RecentMatchListState extends State<RecentMatchList> {
  List<dynamic> recentmatchList = [];
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
            'http://ec2-3-12-238-2.us-east-2.compute.amazonaws.com:8002/api/Event/GetAllMatches'));
    request.body = json.encode({"pageNumber": "1", "pageSize": "10"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print("response");
    print(response.statusCode);
    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      setState(() {
        recentmatchList = json.decode(data)['data'];
        isLoading = false;
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
      child: isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            )
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentmatchList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: RecentMatches(
                    branchName: recentmatchList[index]['branchName'],
                    startTime: recentmatchList[index]['startTime']
                        .toString()
                        .substring(0, 10)
                        .split("-")
                        .reversed
                        .join("-"),
                    currentActivity: recentmatchList[index]['currentActivity'],
                    statkeeperImage: (recentmatchList[index]['statkeeperImage']
                                .toString() ==
                            '')
                        ? 'assets/images/manimage.png'
                        : recentmatchList[index]['statkeeperImage'].toString(),
                    statskeeperName:
                        recentmatchList[index]['statskeeperName'].toString(),
                    status: recentmatchList[index]['status'],
                    statusIcon: 'assets/icons/award.svg',
                    // recentmatchList[index]['branchName'],
                  ),
                );
              },
            ),
    );
  }
}
