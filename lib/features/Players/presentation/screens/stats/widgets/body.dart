part of '../stats_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('data'),
      Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(210, 143, 82, 0.2),
              Color.fromRGBO(0, 163, 46, 0.01),
            ],
           
          ),
        ),
      )

      // Expanded(
      //     child: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: SizedBox(
      //     height: 300,
      //     child: DataTable(
      //         dividerThickness: 1.5,
      //         columnSpacing: 40,
      //         decoration: BoxDecoration(
      //           border: Border.all(
      //             color: Colors.grey,
      //             width: 1,
      //             style: BorderStyle.solid,
      //           ),
      //         ),
      //         columns: [
      //           DataColumn(
      //             label: Text('PLAYER'),
      //             numeric: false,
      //           ),
      //           DataColumn(
      //               label: VerticalDivider(
      //             color: Colors.grey,
      //             width: 1,
      //           )),
      //           DataColumn(
      //             label: Text('PTS'),
      //             numeric: true,
      //           ),
      //           DataColumn(
      //               label: VerticalDivider(
      //             color: Colors.grey,
      //             width: 1,
      //           )),
      //           DataColumn(
      //             label: Text('AST'),
      //             numeric: true,
      //           ),
      //           DataColumn(
      //               label: VerticalDivider(
      //             color: Colors.grey,
      //             width: 1,
      //           )),
      //           DataColumn(
      //             label: Text('WINSCORE'),
      //             numeric: true,
      //           ),
      //           DataColumn(
      //               label: VerticalDivider(
      //             color: Colors.grey,
      //             width: 1,
      //           )),
      //           DataColumn(
      //             label: Text('AST2'),
      //             numeric: true,
      //           ),
      //           DataColumn(
      //               label: VerticalDivider(
      //             color: Colors.grey,
      //             width: 1,
      //           )),
      //           DataColumn(
      //             label: Text('AST3'),
      //             numeric: true,
      //           ),
      //         ],
      //         rows: [
      //           ...teamsData.map((team) => DataRow(
      //                 cells: [
      //                   DataCell(
      //                     Container(
      //                         alignment: AlignmentDirectional.center,
      //                         child: Text(
      //                           team.PLAYER.toString(),
      //                           style: TextStyle(fontWeight: FontWeight.bold),
      //                         )),
      //                   ),
      //                   DataCell(VerticalDivider(
      //                     color: Colors.grey,
      //                     width: 1,
      //                   )),
      //                   DataCell(
      //                     Container(
      //                         alignment: AlignmentDirectional.center,
      //                         child: Text(team.PTS.toString())),
      //                   ),
      //                   DataCell(VerticalDivider(
      //                     color: Colors.grey,
      //                     width: 1,
      //                   )),
      //                   DataCell(
      //                     Container(
      //                         alignment: AlignmentDirectional.center,
      //                         child: Text(team.AST.toString())),
      //                   ),
      //                   DataCell(VerticalDivider(
      //                     color: Colors.grey,
      //                     width: 1,
      //                   )),
      //                   DataCell(
      //                     Container(
      //                         alignment: AlignmentDirectional.center,
      //                         child: Text(team.WINSCORE.toString())),
      //                   ),
      //                   DataCell(VerticalDivider(
      //                     color: Colors.grey,
      //                     width: 1,
      //                   )),
      //                   DataCell(
      //                     Container(
      //                         alignment: AlignmentDirectional.center,
      //                         child: Text(team.AST2.toString())),
      //                   ),
      //                   DataCell(VerticalDivider(
      //                     color: Colors.grey,
      //                     width: 1,
      //                   )),
      //                   DataCell(
      //                     Container(
      //                         alignment: AlignmentDirectional.center,
      //                         child: Text(team.AST3.toString())),
      //                   ),
      //                 ],
      //               ))
      //         ]),
      //   ),
      // ))
    ]);
  }
}

List<Team> teamsData = [
  Team(
      PLAYER: "Elijah Oliver C",
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "Elijah Oliver C",
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "Elijah Oliver C",
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
];

class Team {
  Team({
    required this.PLAYER,
    required this.PTS,
    required this.AST,
    required this.WINSCORE,
    required this.AST2,
    required this.AST3,
  });

  final String PLAYER;
  final int PTS;
  final int AST;
  final int WINSCORE;
  final int AST2;
  final int AST3;
}
