import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/BimageDetails/bimagedetails.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/BuploadMediaDetails/buploadmedia_details.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addbranch/addbranch_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addstatkeepers/addstatkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addvenue/addvenue_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/baddteams/baddteams_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/ballteams/ball_teams.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/beditteams/beditteams_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bgallery/bgallery_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bplayersProfile/bplayersprofile_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/branchdetails/branchdetails_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bteams/bteams_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bteamsdetails/bteams_details.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/buploadmedia/bupload_media.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/editstatkeepers/editstatkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/paying/paying_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/statkeepers/statkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/subscription/subscription_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/venues_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesedit/venuesedit_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venueseditprofile/venueseditprofile_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesprofile/venuesprofile_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/welcomebusiness/welcomebusiness_screen.dart';

class BusinessRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SubscriptionScreen.id: (context) => const SubscriptionScreen(),
    PayingScreen.id: (context) => const PayingScreen(),
    WelcomeBusinessScreen.id: (context) => const WelcomeBusinessScreen(),
    VenuesScreen.id: (context) => const VenuesScreen(),
    StatKeeperScreen.id: (context) => const StatKeeperScreen(),
    VenuesProfileScreen.id: (context) => const VenuesProfileScreen(),
    VenueEditScreen.id: (context) => const VenueEditScreen(),
    VenuesEditProfileScreen.id: (context) => const VenuesEditProfileScreen(),
    EditStatKeepersScreen.id: (context) => const EditStatKeepersScreen(),
    AddStatKeepersScreen.id: (context) => const AddStatKeepersScreen(),
    AddBranchScreen.id: (context) => const AddBranchScreen(),
    BranchDetailsScreen.id: (context) => const BranchDetailsScreen(),
    AddVenueScreen.id: (context) => const AddVenueScreen(),
    //GALLERY
    BGalleryScreen.id: (context) => const BGalleryScreen(),
    BUploadMediaScreen.id: (context) => const BUploadMediaScreen(),
    BUploadMediaDetailsScreen.id: (context) =>
        const BUploadMediaDetailsScreen(),
    BImageDetailsScreen.id: (context) => const BImageDetailsScreen(),

    //teams
    BTeamsScreen.id: (context) => const BTeamsScreen(),
    BTeamsDetails.id: (context) => const BTeamsDetails(),
    BAllTeams.id: (context) => const BAllTeams(),
    BPlayersProfileScreen.id: (context) => const BPlayersProfileScreen(),
    BAddTeamsScreen.id: (context) => const BAddTeamsScreen(),
    BEditTeamsScreen.id: (context) => const BEditTeamsScreen(),
  };
}
