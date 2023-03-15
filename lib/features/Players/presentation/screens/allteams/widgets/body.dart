part of '../all_teams.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

 bool _recentMatchesSelected = false;
  bool _playersSelected = false;


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
                Row(
                  children: [
                    // Filters(
                    //   text: 'Recent Matches',
                    // ),
                    // Filters(
                    //   text: 'Players',
                    // ),
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
