import 'package:flutter/material.dart';

import '../../../features/Players/presentation/screens/Teams/teams_screen.dart';
import '../../../features/Players/presentation/screens/allteams/all_teams.dart';
import '../../../features/Players/presentation/screens/events/events_screen.dart';
import '../../../features/Players/presentation/screens/gallery/gallery_screen.dart';
import '../../../features/Players/presentation/screens/imageDetails/imagedetails.dart';
import '../../../features/Players/presentation/screens/joinTournamnet/jointournament_screen.dart';
import '../../../features/Players/presentation/screens/notification/notification_screen.dart';
import '../../../features/Players/presentation/screens/overview/overview_screen.dart';
import '../../../features/Players/presentation/screens/profile/profile_screen.dart';
import '../../../features/Players/presentation/screens/requestjoinin_tournament/requesttojoin_tournament.dart';
import '../../../features/Players/presentation/screens/stats/stats_screen.dart';
import '../../../features/Players/presentation/screens/teamsdetails/teams_details.dart';
import '../../../features/Players/presentation/screens/tournament/tournament_screen.dart';
import '../../../features/Players/presentation/screens/uploadMediaDetails/uploadmedia_details.dart';
import '../../../features/Players/presentation/screens/uploadmedia/upload_media.dart';
import '../../../features/Players/presentation/screens/viewallTournament/viewall_tournament_screen.dart';

class PlayersRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    OverviewScreen.id: (context) => const OverviewScreen(),
    EventsScreen.id: (context) => const EventsScreen(),
    TeamsScreen.id: (context) => const TeamsScreen(),
    TeamsDetails.id: (context) => const TeamsDetails(),
    AllTeams.id: (context) => const AllTeams(),
    GalleryScreen.id: (context) => const GalleryScreen(),
    UploadMediaScreen.id: (context) => const UploadMediaScreen(),
    UploadMediaDetailsScreen.id: (context) => const UploadMediaDetailsScreen(),
    ImageDetailsScreen.id: (context) => const ImageDetailsScreen(),
    NotificationScreen.id: (context) => const NotificationScreen(),
    ViewallTornamentScreen.id: (context) => const ViewallTornamentScreen(),
    TornamentScreen.id: (context) => const TornamentScreen(),
    ProfileScreen.id: (context) => const ProfileScreen(),
    RequestJoiningTournament.id: (context) => const RequestJoiningTournament(),
    JoinTornamentScreen.id: (context) => const JoinTornamentScreen(),
    StatsScreen.id: (context) => const StatsScreen(),
  };
}
