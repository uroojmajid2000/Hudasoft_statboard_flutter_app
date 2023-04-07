import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/overview/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/overview/widgets/recent_match_grid.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/overview/widgets/recent_teams_grid.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/overview/widgets/recent_venues_grid.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/overview/widgets/upcoming_tournaments_grid.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../viewallTournament/viewall_tournament_screen.dart';

part 'widgets/body.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  static String id = "overview_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Overview',
      currentTab: 1,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
