import 'package:statboard_flutter_app/shared/businesslayout/widgets/navigation_button.dart';

import 'package:flutter/material.dart';

import '../../../features/Players/presentation/screens/Teams/teams_screen.dart';
import '../../../features/Players/presentation/screens/events/events_screen.dart';
import '../../../features/Players/presentation/screens/gallery/gallery_screen.dart';
import '../../../features/Players/presentation/screens/overview/overview_screen.dart';
import '../../routes/navigate.dart';

class BuildBottomAppBar extends StatefulWidget {
  final int currentTab;

  const BuildBottomAppBar({super.key, required this.currentTab});

  @override
  State<BuildBottomAppBar> createState() => _BuildBottomAppBarState();
}

class _BuildBottomAppBarState extends State<BuildBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 18.0,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationButton(
                onPressed: () => Navigate.to(context, OverviewScreen.id),
                icon: 'assets/icons/home.svg',
                text: 'Overview',
                tab: 1,
                currentTab: widget.currentTab,
              ),
              NavigationButton(
                onPressed: () => Navigate.to(context, EventsScreen.id),
                icon: 'assets/icons/events.svg',
                text: 'Events',
                tab: 2,
                isDisabled: true,
                currentTab: widget.currentTab,
              ),
              NavigationButton(
                onPressed: () => Navigate.to(context, TeamsScreen.id),
                icon: 'assets/icons/teams.svg',
                text: 'Teams',
                tab: 3,
                isDisabled: true,
                currentTab: widget.currentTab,
              ),
              NavigationButton(
                onPressed: () => Navigate.to(context, GalleryScreen.id),
                icon: 'assets/icons/gallery.svg',
                text: 'Gallery',
                tab: 4,
                isDisabled: true,
                currentTab: widget.currentTab,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
