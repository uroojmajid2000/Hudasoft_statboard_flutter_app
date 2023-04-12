import 'package:statboard_flutter_app/features/Business/Presentation/screens/bevents/bevents_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bgallery/bgallery_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bteams/bteams_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/statkeepers/statkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/venues_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/events/events_screen.dart';
import 'package:statboard_flutter_app/shared/businesslayout/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import '../../../features/Players/presentation/screens/teams/teams_screen.dart';
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
      height: 70,
      elevation: 18.0,
      // shape: const CircularNotchedRectangle(),
      // notchMargin: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationButton(
            onPressed: () => Navigate.to(context, VenuesScreen.id),
            icon: 'assets/icons/home.svg',
            text: 'venues',
            tab: 0,
            isDisabled: false,
            currentTab: widget.currentTab,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, StatKeeperScreen.id),
            icon: 'assets/icons/statkeeper.svg',
            text: 'Statkeepers',
            tab: 1,
            isDisabled: true,
            currentTab: widget.currentTab,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, BEventsScreen.id),
            icon: 'assets/icons/events.svg',
            text: 'Events',
            tab: 2,
            isDisabled: true,
            currentTab: widget.currentTab,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, BTeamsScreen.id),
            icon: 'assets/icons/teams.svg',
            text: 'Teams',
            tab: 3,
            isDisabled: true,
            currentTab: widget.currentTab,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, BGalleryScreen.id),
            icon: 'assets/icons/gallery.svg',
            text: 'Gallery',
            tab: 4,
            isDisabled: true,
            currentTab: widget.currentTab,
          ),
        ],
      ),
    );
  }
}
