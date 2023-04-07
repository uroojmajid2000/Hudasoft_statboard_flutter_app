part of '../events_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: MySearchBar(
                hintText: 'Search teams',
                onChange: (value) {},
                prefixIcon: 'assets/icons/search.png',
                suffixIcon: 'assets/icons/filter.png',
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: EventsFilters(),
            ),
            const SizedBox(height: 15),
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
                      text: 'Matches',
                    ),
                    Tab(
                      text: 'Tournaments',
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: TabBarView(
                controller: _tabController,
                children: [MatchesView(), TournamentsView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
