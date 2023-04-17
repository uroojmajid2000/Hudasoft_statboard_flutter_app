import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/bevents/widgets/eventsfilters.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/bevents/widgets/matchesview.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/bevents/widgets/tournamentsview.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';

part 'widgets/body.dart';

class BEventsScreen extends StatelessWidget {
  const BEventsScreen({Key? key}) : super(key: key);

  static String id = "bevents_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Events',
      currentTab: 2,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
