import 'package:flutter/material.dart';
import '../../../../../shared/layout/layout_screen.dart';

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
