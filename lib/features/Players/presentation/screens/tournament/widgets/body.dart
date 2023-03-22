part of '../tournament_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final bool = true;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 300, // specify height
                  width: double.infinity, // take up all available width
                  child: Image.asset(
                    'assets/images/tournamentcoverpic.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 250,
                  child: SizedBox(
                    width: 343.91,
                    child: MyText.TournamentHeadingText(
                      "California Gym Premier League",
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/michel.png',
                      width: 40,
                      height: 40,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Created by",
                                style: TextStyle(
                                  color: Color(0xff6f6d6d),
                                  fontSize: 16,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              MyText.labelText(
                                "Elijah Oliver",
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                        onTap: () =>
                            Navigate.to(context, RequestJoiningTournament.id),
                        child: ContainerButton(
                          text: "Request to Join",
                        ))
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Divider(
                color: Color(0xffd7d7d7),
                thickness: 1,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 50,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorColor: Color(0xff00b0f0),
                  indicatorWeight: 2.5,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xff00b0f0),
                  unselectedLabelColor: Color(0xff8e8e8e),
                  // dragStartBehavior: DragStartBehavior.start,
                  enableFeedback: true,
                  onTap: (index) {},
                  physics: AlwaysScrollableScrollPhysics(),
                  splashFactory: InkRipple.splashFactory,
                  tabs: [
                    Tab(
                      text: 'Info',
                    ),
                    Tab(
                      text: 'Teams',
                    ),
                    Tab(
                      text: 'Prize',
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: TabBarView(
                controller: _tabController,
                children: [Info(), Teams(), Prize()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
