import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_matches.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_teams.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_venues.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/upcoming_tournaments.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/gallery.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/text.dart';
import '../viewallTournament/viewall_tournament_screen.dart';

part 'widgets/body.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  static String id = "overview_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Overview',
      currentTab: 1,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
