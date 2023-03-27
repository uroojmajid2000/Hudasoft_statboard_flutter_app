part of '../all_teams.dart';

class Body extends StatefulWidget {
  Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _recentMatchesSelected = true;
  bool _playersSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: kPrimaryColor,
              child: SvgPicture.asset('assets/icons/edit.svg'),
              // child:
              //  Text(
              //   '+',
              //   style: TextStyle(color: Colors.white, fontSize: 45),
              // ),
              heroTag: null,
              onPressed: () {
                Navigate.to(context, EditTeamsScreen.id);
              },
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              backgroundColor: kPrimaryColor,
              child: SvgPicture.asset('assets/icons/add.svg'),
              // Text(
              //   '-',
              //   style: TextStyle(color: Colors.white, fontSize: 45),
              // ),
              heroTag: null,
              onPressed: () {
                Navigate.to(context, AddTeamsScreen.id);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    DetailsTeams(),
                    SizedBox(
                      height: 14,
                    ),
                    AllTeamsContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Filters(
                          text: 'Recent Matches',
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
                          text: 'Players',
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
                    SizedBox(
                      height: 20,
                    ),
                    if (_recentMatchesSelected)
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText.HeadingText(
                            'Matches',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 20,
                              childAspectRatio: 5 / 2,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  // Navigate.next(context, AllTeams.id);
                                },
                                child: GridTile(
                                  child: RecentMatchesTeams(),
                                ),
                              );
                            },
                          ),

                          // MatchesList(),
                        ],
                      ),
                    if (_playersSelected)
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText.HeadingText(
                                "All",
                              ),
                              Text(
                                "View Team Player Stats",
                                style: TextStyle(
                                  color: Color(0xff00b0f0),
                                  fontSize: 10,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProfileContainer(),
                              ProfileContainer(),
                              ProfileContainer(),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProfileContainer(),
                              ProfileContainer(),
                              ProfileContainer(),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProfileContainer(),
                              ProfileContainer(),
                              ProfileContainer(),
                            ],
                          ),
                        ],
                      ),
                  ]),
            )));
  }
}
