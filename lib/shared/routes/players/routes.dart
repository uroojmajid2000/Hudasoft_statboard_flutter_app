import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/venuesTournament/venues_tournament_screen.dart';

import '../../../features/Players/presentation/screens/Teams/teams_screen.dart';
import '../../../features/Players/presentation/screens/addteams/addteams_screen.dart';
import '../../../features/Players/presentation/screens/allteams/all_teams.dart';
import '../../../features/Players/presentation/screens/editprofile/editprofile_screen.dart';
import '../../../features/Players/presentation/screens/editteams/editteams_screen.dart';
import '../../../features/Players/presentation/screens/events/events_screen.dart';
import '../../../features/Players/presentation/screens/gallery/gallery_screen.dart';
import '../../../features/Players/presentation/screens/imageDetails/imagedetails.dart';
import '../../../features/Players/presentation/screens/interest/interst_screen.dart';
import '../../../features/Players/presentation/screens/joinTournamnet/jointournament_screen.dart';
import '../../../features/Players/presentation/screens/leaveTournamnet/leavetournament_screen.dart';
import '../../../features/Players/presentation/screens/matchstats/matchstats_screen.dart';
import '../../../features/Players/presentation/screens/notification/notification_screen.dart';
import '../../../features/Players/presentation/screens/notificationeditprofile/notificationeditprofile_screen.dart';
import '../../../features/Players/presentation/screens/overview/overview_screen.dart';
import '../../../features/Players/presentation/screens/permissions/permissions_screen.dart';
import '../../../features/Players/presentation/screens/playersProfile/playersprofile_screen.dart';
import '../../../features/Players/presentation/screens/profile/profile_screen.dart';
import '../../../features/Players/presentation/screens/profiledetails/profiledetails_screen.dart';
import '../../../features/Players/presentation/screens/recentvenues/recentvenues_screen.dart';
import '../../../features/Players/presentation/screens/requestjoinin_tournament/requesttojoin_tournament.dart';
import '../../../features/Players/presentation/screens/security/security_screen.dart';
import '../../../features/Players/presentation/screens/securitypassword/securitypassword_screen.dart';
import '../../../features/Players/presentation/screens/stats/stats_screen.dart';
import '../../../features/Players/presentation/screens/teamsdetails/teams_details.dart';
import '../../../features/Players/presentation/screens/tournament/tournament_screen.dart';
import '../../../features/Players/presentation/screens/uploadMediaDetails/uploadmedia_details.dart';
import '../../../features/Players/presentation/screens/uploadmedia/upload_media.dart';
import '../../../features/Players/presentation/screens/viewallTournament/viewall_tournament_screen.dart';

class PlayersRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    //overview
    OverviewScreen.id: (context) => const OverviewScreen(),
    ViewallTornamentScreen.id: (context) => const ViewallTornamentScreen(),
    TornamentScreen.id: (context) => const TornamentScreen(),
    RecentVenuesScreen.id: (context) => const RecentVenuesScreen(),
    MatchStatsScreen.id: (context) => const MatchStatsScreen(),

    //Teams
    TeamsScreen.id: (context) => const TeamsScreen(),
    TeamsDetails.id: (context) => const TeamsDetails(),
    AllTeams.id: (context) => const AllTeams(),
    PlayersProfileScreen.id: (context) => const PlayersProfileScreen(),
    AddTeamsScreen.id: (context) => const AddTeamsScreen(),
    EditTeamsScreen.id: (context) => const EditTeamsScreen(),

    //GALLERY
    GalleryScreen.id: (context) => const GalleryScreen(),
    UploadMediaScreen.id: (context) => const UploadMediaScreen(),
    UploadMediaDetailsScreen.id: (context) => const UploadMediaDetailsScreen(),
    ImageDetailsScreen.id: (context) => const ImageDetailsScreen(),

    //events
    EventsScreen.id: (context) => const EventsScreen(),
    StatsScreen.id: (context) => const StatsScreen(),
    RequestJoiningTournament.id: (context) => const RequestJoiningTournament(),
    JoinTornamentScreen.id: (context) => const JoinTornamentScreen(),
    LeaveTornamentScreen.id: (context) => const LeaveTornamentScreen(),

    //Notification
    NotificationScreen.id: (context) => const NotificationScreen(),
    VenueTornamentScreen.id: (context) => const VenueTornamentScreen(),


    //profile
    ProfileScreen.id: (context) => const ProfileScreen(),
    EditProfileScreen.id: (context) => const EditProfileScreen(),
    ProfileDetailsScreen.id: (context) => const ProfileDetailsScreen(),
    SecurityScreen.id: (context) => const SecurityScreen(),
    SecurityPasswordScreen.id: (context) => const SecurityPasswordScreen(),
    PermissionsScreen.id: (context) => const PermissionsScreen(),
    InterstScreen.id: (context) => const InterstScreen(),
    NotificationEditProfileScreen.id: (context) => const NotificationEditProfileScreen(),
    
  };
}
