import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/venuesTournament/venues_tournament_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/venuesTournament/widgets/venues_tournamentcontainer.dart';
import '../../viewallTournament/widgets/viewall_tournaments.dart';

class TournamentsView extends StatelessWidget {
  const TournamentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          // SizedBox(width: double.infinity, child: ViewallTournaments()),
          // SizedBox(
          //   height: 20,
          // ),
          // SizedBox(width: double.infinity, child: ViewallTournaments()),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 23),
                  child: VenuesTournamentsContainer(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
