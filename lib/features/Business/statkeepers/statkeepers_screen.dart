import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_match_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_matches.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_teams.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_teams_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_venues.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/recent_venues_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/upcoming_tournaments.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/gallery.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/widgets/upcoming_tournaments_grid.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../shared/businesslayout/businesslayout_screen.dart';

part 'widgets/body.dart';

class StatKeeperScreen extends StatelessWidget {
  const StatKeeperScreen({Key? key}) : super(key: key);

  static String id = "statkeepers_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'StatKeeperScreen',
      currentTab: 1,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
