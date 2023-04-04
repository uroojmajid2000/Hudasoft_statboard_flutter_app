import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/paying/paying_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/statkeepers/statkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/subscription/subscription_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/venues_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/welcomebusiness/welcomebusiness_screen.dart';


class BusinessRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SubscriptionScreen.id: (context) => const SubscriptionScreen(),
    PayingScreen.id: (context) => const PayingScreen(),
    WelcomeBusinessScreen.id: (context) => const WelcomeBusinessScreen(),
    VenuesScreen.id: (context) => const VenuesScreen(),
    StatKeeperScreen.id: (context) => const StatKeeperScreen(),
  };
}
