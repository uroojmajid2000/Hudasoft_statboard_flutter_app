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
                  MyText.viewText(
                    "View all",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        UpcomingTournaments(),
                        SizedBox(width: 10),
                        UpcomingTournaments(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              'Recent Matches',
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RecentMatches(),
                        SizedBox(width: 18),
                        RecentMatches(),
                        SizedBox(width: 18),
                        RecentMatches(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              'Recent Venues',
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RecentVenues(),
                        SizedBox(width: 18),
                        RecentVenues(),
                        SizedBox(width: 18),
                        RecentVenues(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              'Recent Teams',
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RecentTeams(),
                        SizedBox(width: 18),
                        RecentTeams(),
                        SizedBox(width: 18),
                        RecentTeams(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyText.HeadingText(
              "Recent Media",
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gallery(),
                  SizedBox(width: 18),
                  Gallery(),
                  SizedBox(width: 18),
                  Gallery(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
