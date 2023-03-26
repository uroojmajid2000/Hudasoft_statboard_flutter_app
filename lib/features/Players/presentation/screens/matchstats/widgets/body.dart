part of '../matchstats_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _recentMatchesSelected = true;
  bool _playersSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // child: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       colors: [
      //         Color.fromRGBO(210, 143, 82, 0.2),
      //         Color.fromRGBO(0, 163, 46, 0.01),
      //       ],
      //     ),
      //   ),
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
            child: StatsDetails(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Filters(
                  text: 'Lineup',
                  isSelected: _recentMatchesSelected,
                  onChanged: (value) {
                    setState(() {
                      _recentMatchesSelected = value;
                      _playersSelected = false;
                    });
                  },
                ),
                SizedBox(
                  width: 6,
                ),
                Filters(
                  text: 'Stats',
                  isSelected: _playersSelected,
                  onChanged: (value) {
                    setState(() {
                      _playersSelected = value;
                      _recentMatchesSelected = false;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          if (_recentMatchesSelected)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 10,
                // ),
                // GridView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemCount: 1,
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 1,
                //     mainAxisSpacing: 20,
                //     childAspectRatio: 5 / 2,
                //   ),
                //   itemBuilder: (BuildContext context, int index) {
                //     return GestureDetector(
                //       onTap: () {
                //         // Navigate.next(context, AllTeams.id);
                //       },
                //       child: GridTile(
                //         child: RecentMatchesTeams(),
                //       ),
                //     );
                //   },
                // ),

                // MatchesList(),
              ],
            ),
          if (_playersSelected)
            Column(children: [
              // SizedBox(
              //   height: 5,
              // ),
              TeamContainer(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Expanded(
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
                                cells: [
                                  DataCell(
                                    Container(
                                        child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/manimage.png',
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
                )),
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
                child: Expanded(
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
                                cells: [
                                  DataCell(
                                    Container(
                                        // alignment: AlignmentDirectional.center,
                                        child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/manimage.png',
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
                )),
              ),
            ]),
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
      thickness: 1,
    ));
  }

  DataCell VerticleLine() {
    return DataCell(VerticalDivider(
      color: Colors.grey,
      width: 1,
      thickness: 1,
    ));
  }
}
