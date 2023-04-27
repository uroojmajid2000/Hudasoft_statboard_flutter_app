part of '../overview_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 14),
      padding: const EdgeInsets.only(left: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.HeadingText(
                    "Upcoming Tournaments",
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigate.to(context, ViewallTornamentScreen.id),
                    child: MyText.viewText(
                      "View all",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            UpcomingTournamentsList(),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              'Recent Matches',
            ),
            SizedBox(
              height: 10,
            ),
            RecentMatchList(),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              'Recent Venues',
            ),
            SizedBox(
              height: 10,
            ),
            RecentVenuesList(),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              'Recent Teams',
            ),
            SizedBox(
              height: 10,
            ),
            RecentTeamsList(),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              "Recent Media",
            ),
            SizedBox(
              height: 10,
            ),
            GalleryList(),


              SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
