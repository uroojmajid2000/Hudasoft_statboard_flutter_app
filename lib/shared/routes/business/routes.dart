import 'package:flutter/material.dart';

import '../../../features/Business/paying/paying_screen.dart';
import '../../../features/Business/statkeepers/statkeepers_screen.dart';
import '../../../features/Business/subscription/subscription_screen.dart';
import '../../../features/Business/venues/venues_screen.dart';
import '../../../features/Business/welcomebusiness/welcomebusiness_screen.dart';


class BusinessRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SubscriptionScreen.id: (context) => const SubscriptionScreen(),
    PayingScreen.id: (context) => const PayingScreen(),
    WelcomeBusinessScreen.id: (context) => const WelcomeBusinessScreen(),
    VenuesScreen.id: (context) => const VenuesScreen(),
    StatKeeperScreen.id: (context) => const StatKeeperScreen(),
  };
}
