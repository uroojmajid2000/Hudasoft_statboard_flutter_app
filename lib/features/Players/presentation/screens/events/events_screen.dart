import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/events/widgets/eventsfilters.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/events/widgets/matchesview.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/events/widgets/tournamentsview.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../allteams/widgets/filters.dart';

part 'widgets/body.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  static String id = "events_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Events',
      currentTab: 2,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
