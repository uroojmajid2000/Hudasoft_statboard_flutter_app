part of '../stats_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
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
              child: StatsDetails()),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Color(0xff5642a9),
                      radius: 15,
                      child: Text(
                        "T",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                  SizedBox(
                    height: 3,
                  ),
                  MyText.labelText(
                    "Tornado",
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 300,
                child: DataTable(
                    dividerThickness: 1.5,
                    columnSpacing: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffebebeb),
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    columns: [
                      DataColumn(
                        label: MyText.tableHeading('PLAYER'),
                        numeric: false,
                      ),
                      DataColumn(
                          label: VerticalDivider(
                        color: Colors.grey,
                        width: 1,
                      )),
                      DataColumn(
                        label: MyText.tableHeading('PTS'),
                        numeric: true,
                      ),
                      DataColumn(
                          label: VerticalDivider(
                        color: Colors.grey,
                        width: 1,
                      )),
                      DataColumn(
                        label: MyText.tableHeading('AST'),
                        numeric: true,
                      ),
                      DataColumn(
                          label: VerticalDivider(
                        color: Colors.grey,
                        width: 1,
                      )),
                      DataColumn(
                        label: MyText.tableHeading('WINSCORE'),
                        numeric: true,
                      ),
                      DataColumn(
                          label: VerticalDivider(
                        color: Colors.grey,
                        width: 1,
                      )),
                      DataColumn(
                        label: MyText.tableHeading('AST2'),
                        numeric: true,
                      ),
                      DataColumn(
                          label: VerticalDivider(
                        color: Colors.grey,
                        width: 1,
                      )),
                      DataColumn(
                        label: MyText.tableHeading('AST3'),
                        numeric: true,
                      ),
                    ],
                    rows: [
                      ...teamsData.map((team) => DataRow(
                            cells: [
                              DataCell(
                                Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      team.PLAYER.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              DataCell(VerticalDivider(
                                color: Colors.grey,
                                width: 1,
                              )),
                              DataCell(
                                Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(team.PTS.toString())),
                              ),
                              DataCell(VerticalDivider(
                                color: Colors.grey,
                                width: 1,
                              )),
                              DataCell(
                                Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(team.AST.toString())),
                              ),
                              DataCell(VerticalDivider(
                                color: Colors.grey,
                                width: 1,
                              )),
                              DataCell(
                                Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(team.WINSCORE.toString())),
                              ),
                              DataCell(VerticalDivider(
                                color: Colors.grey,
                                width: 1,
                              )),
                              DataCell(
                                Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(team.AST2.toString())),
                              ),
                              DataCell(VerticalDivider(
                                color: Colors.grey,
                                width: 1,
                              )),
                              DataCell(
                                Container(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(team.AST3.toString())),
                              ),
                            ],
                          ))
                    ]),
              ),
            )),
          ),
        ],
      ),
    );
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
