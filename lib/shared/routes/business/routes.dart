import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addbranch/addbranch_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addstatkeepers/addstatkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/branchdetails/branchdetails_screen.dart';
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
  };
}
