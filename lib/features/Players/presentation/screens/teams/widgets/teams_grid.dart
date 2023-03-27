// import 'package:flutter/material.dart';
// import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/teams_container.dart';
// import '../../../../../../shared/routes/navigate.dart';
// import '../../allteams/all_teams.dart';
// import 'matches.dart';

// class TeamsList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//    final List<String> _teamNames = [
//     'Tornado',
//     'Vulcan',
//   ];
//     return
//         // Container(
//         //   // height: 157.75,
//         //   child:
//         ListView.builder(
//       scrollDirection: Axis.vertical,
//       itemCount: _teamNames.length,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: EdgeInsets.only(right: 8.0),
//           child: GestureDetector(
//                     onTap: () {
//                       Navigate.to(context, AllTeams.id);
//                     },
//                     child: GridTile(
//                       child: TeamsContainer(teamName: _teamNames[index]),
//                     ),
//                   )
//         );
//       },
//     );
//     // );
//   }
// }
