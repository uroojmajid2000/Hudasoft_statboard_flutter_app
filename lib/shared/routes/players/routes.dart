import 'package:flutter/material.dart';

import '../../../features/Players/presentation/screens/Teams/teams_screen.dart';
import '../../../features/Players/presentation/screens/events/events_screen.dart';
import '../../../features/Players/presentation/screens/gallery/gallery_screen.dart';
import '../../../features/Players/presentation/screens/overview/overview_screen.dart';

class PlayersRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    OverviewScreen.id: (context) => const OverviewScreen(),
    EventsScreen.id: (context) => const EventsScreen(),
    TeamsScreen.id: (context) => const TeamsScreen(),
    GalleryScreen.id: (context) => const GalleryScreen(),
  };
}
