part of '../all_teams.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                DetailsTeams(),
                SizedBox(
                  height: 14,
                ),
                AllTeamsContainer(),
                SizedBox(
                  height: 14,
                ),
                Filters(),
                SizedBox(
                  height: 20,
                ),
                MyText.HeadingText(
                  'Matches',
                ),
                SizedBox(
                  height: 10,
                ),
                RecentMatchesItem(),
                SizedBox(height: 18),
                RecentMatchesItem(),
                SizedBox(height: 18),
                RecentMatchesItem(),
              ]),
        ));
  }
}
