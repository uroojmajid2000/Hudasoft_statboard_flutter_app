import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/infocard.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InfoCard(
              imageIcon: 'assets/icons/stadium.svg',
              stadium: "California Stadium",
              location: "Court A, Court B",
            ),
            SizedBox(
              height: 18,
            ),
            InfoCard(
              imageIcon: 'assets/icons/schedule.svg',
              stadium: "Schedule",
              location: "25 Sep 2022 - 25 Dec 2022",
            ),
            SizedBox(
              height: 18,
            ),
            InfoCard(
              imageIcon: 'assets/icons/venue.svg',
              stadium: "Sports",
              location: "Football",
            ),
            SizedBox(
              height: 18,
            ),
            InfoCard(
              imageIcon: 'assets/icons/capacity.svg',
              stadium: "Teams Capacity",
              location: "8/10",
            ),
            SizedBox(
              height: 18,
            ),
            InfoCard(
              imageIcon: 'assets/icons/teamsblue.svg',
              stadium: "Minimum Players",
              location: "8 Players per Team",
            ),
            SizedBox(
              height: 18,
            ),
            InfoCard(
              imageIcon: 'assets/icons/teamsblue.svg',
              stadium: "Maximum Players",
              location: "10 Players per Team",
            ),
            SizedBox(
              height: 18,
            ),
            InfoCard(
              imageIcon: 'assets/icons/teamsblue.svg',
              stadium: "Maximum Players",
              location: "10 Players per Team",
            ),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/infocard.dart';

// class Info extends StatefulWidget {
//   const Info({super.key});

//   @override
//   State<Info> createState() => _InfoState();
// }

// class _InfoState extends State<Info> {
//   final List<Map<String, String>> _infoList = [
//     {
//       "imageIcon": "assets/icons/stadium.svg",
//       "stadium": "California Stadium",
//       "location": "Court A, Court B"
//     },
//     {
//       "imageIcon": "assets/icons/stadium.svg",
//       "stadium": "California",
//       "location": "iii"
//     },
//     {
//       "imageIcon": "assets/icons/stadium.svg",
//       "stadium": "California Stadium",
//       "location": "Court A, Court B"
//     },
//     {
//       "imageIcon": "assets/icons/stadium.svg",
//       "stadium": "California Stadium",
//       "location": "Court A, Court B"
//     },
//     {
//       "imageIcon": "assets/icons/stadium.svg",
//       "stadium": "California Stadium",
//       "location": "Court A, Court B"
//     },
//     {
//       "imageIcon": "assets/icons/stadium.svg",
//       "stadium": "California Stadium",
//       "location": "Court A, Court B"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 14),
//       child: ListView.builder(
//         itemCount: _infoList.length,
//         itemBuilder: (BuildContext context, int index) {
//           final info = _infoList[index];
//           return Column(
//             children: [
//               InfoCard(
//                 imageIcon: info["imageIcon"]!,
//                 stadium: info["stadium"]!,
//                 location: info["location"]!,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
