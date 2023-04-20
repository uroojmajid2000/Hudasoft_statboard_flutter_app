part of '../stats_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var mySelectedRow;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child: Column(
        children: [
          StatsDetails(),
          SizedBox(
            height: 15,
          ),
          TeamContainer(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                // height: 300,
                child: DataTable(
                    dividerThickness: 1.5,
                    columnSpacing: 10,
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
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('PTS'),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('AST'),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText.tableHeading('WIN'),
                            MyText.tableHeading('SCORE'),
                          ],
                        ),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('AST2'),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('AST3'),
                        numeric: true,
                      ),
                    ],
                    rows: [
                      ...teamsData.map((team) => DataRow(
                            color: MaterialStateColor.resolveWith((states) {
                              // Check if the team.PLAYER equals to "John Doe"
                              // If yes, return Colors.red, else return Colors.transparent
                              return team.PLAYER == "John Michel"
                                  ? Color(0xffab8000)
                                  : Colors.transparent;
                            }),
                            cells: [
                              DataCell(
                                Container(
                                    child: Row(
                                  children: [
                                    Image.asset(
                                      // 'assets/images/manimage.png',
                                      team.image.toString(),
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    MyText.tableRow(
                                      team.PLAYER.toString(),
                                    ),
                                  ],
                                )),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.PTS.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.AST.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.WINSCORE.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.AST2.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.AST3.toString(),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TeamContainer(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                // height: 300,
                child: DataTable(
                    dividerThickness: 1.5,
                    columnSpacing: 10,
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
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('PTS'),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('AST'),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText.tableHeading('WIN'),
                            MyText.tableHeading('SCORE'),
                          ],
                        ),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('AST2'),
                        numeric: true,
                      ),
                      ColumnVerticleLine(),
                      DataColumn(
                        label: MyText.tableHeading('AST3'),
                        numeric: true,
                      ),
                    ],
                    rows: [
                      ...teamsData.map((team) => DataRow(
                            color: MaterialStateColor.resolveWith((states) {
                              // Check if the team.PLAYER equals to "John Doe"
                              // If yes, return Colors.red, else return Colors.transparent
                              return team.PLAYER == "John Michel"
                                  ? Color(0xffab8000)
                                  : Colors.transparent;
                            }),
                            cells: [
                              DataCell(
                                Container(
                                    child: Row(
                                  children: [
                                    Image.asset(
                                      // 'assets/images/manimage.png',
                                      team.image.toString(),
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(width: 8),
                                    MyText.tableRow(
                                      team.PLAYER.toString(),
                                    ),
                                  ],
                                )),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.PTS.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.AST.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.WINSCORE.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.AST2.toString(),
                                  ),
                                ),
                              ),
                              VerticleLine(),
                              DataCell(
                                Container(
                                  alignment: AlignmentDirectional.center,
                                  child: MyText.tableRow(
                                    team.AST3.toString(),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
      // ),
    );
  }

  DataColumn ColumnVerticleLine() {
    return DataColumn(
        label: VerticalDivider(
      color: Colors.grey,
      width: 1,
      // thickness: 1,
    ));
  }

  DataCell VerticleLine() {
    return DataCell(VerticalDivider(
      color: Colors.grey,
      width: 1,
      // thickness: 1,
    ));
  }
}
