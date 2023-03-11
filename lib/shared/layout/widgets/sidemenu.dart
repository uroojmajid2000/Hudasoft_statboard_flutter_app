// import 'package:statboard_flutter_app/shared/layout/widgets/navigation_button.dart';

// import 'package:flutter/material.dart';

// import '../../../features/Players/presentation/screens/Teams/teams_screen.dart';
// import '../../../features/Players/presentation/screens/events/events_screen.dart';
// import '../../../features/Players/presentation/screens/gallery/gallery_screen.dart';
// import '../../../features/Players/presentation/screens/overview/overview_screen.dart';
// import '../../routes/navigate.dart';

// class BuildBottomAppBar extends StatefulWidget {
//   final int currentTab;

//   const BuildBottomAppBar({super.key, required this.currentTab});

//   @override
//   State<BuildBottomAppBar> createState() => _BuildBottomAppBarState();
// }

// class _BuildBottomAppBarState extends State<BuildBottomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       elevation: 18.0,
//       shape: const CircularNotchedRectangle(),
//       notchMargin: 10,
//       child: SizedBox(
//         height: 70,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               NavigationButton(
//                 onPressed: () => Navigate.to(context, OverviewScreen.id),
//                 icon: 'assets/icons/home.svg',
//                 text: 'Overview',
//                 tab: 1,
//                 currentTab: widget.currentTab,
//               ),
//               NavigationButton(
//                 onPressed: () => Navigate.to(context, EventsScreen.id),
//                 icon: 'assets/icons/events.svg',
//                 text: 'Events',
//                 tab: 2,
//                 isDisabled: true,
//                 currentTab: widget.currentTab,
//               ),
//               NavigationButton(
//                 onPressed: () => Navigate.to(context, TeamsScreen.id),
//                 icon: 'assets/icons/teams.svg',
//                 text: 'Teams',
//                 tab: 3,
//                 isDisabled: true,
//                 currentTab: widget.currentTab,
//               ),
//               NavigationButton(
//                 onPressed: () => Navigate.to(context, GalleryScreen.id),
//                 icon: 'assets/icons/gallery.svg',
//                 text: 'Gallery',
//                 tab: 4,
//                 isDisabled: true,
//                 currentTab: widget.currentTab,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/layout/widgets/navigation_button.dart';
import '../../../features/Players/presentation/screens/Teams/teams_screen.dart';
import '../../../features/Players/presentation/screens/events/events_screen.dart';
import '../../../features/Players/presentation/screens/gallery/gallery_screen.dart';
import '../../../features/Players/presentation/screens/overview/overview_screen.dart';
import '../../routes/navigate.dart';

class BuildSideMenu extends StatefulWidget {
  final int currentTab;

  const BuildSideMenu({Key? key, required this.currentTab}) : super(key: key);

  @override
  State<BuildSideMenu> createState() => _BuildSideMenuState();
}

class _BuildSideMenuState extends State<BuildSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          SizedBox(
              width: 150,
              height: 27,
              child: Image.asset('assets/logos/layer.png')),
          SizedBox(
            height: 25,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, OverviewScreen.id),
            icon: 'assets/icons/home.svg',
            text: 'Overview',
            tab: 1,
            currentTab: widget.currentTab,
          ),
          SizedBox(
            height: 13,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, EventsScreen.id),
            icon: 'assets/icons/events.svg',
            text: 'Events',
            tab: 2,
            isDisabled: true,
            currentTab: widget.currentTab,
          ),
          SizedBox(
            height: 13,
          ),
          NavigationButton(
            onPressed: () => Navigate.to(context, TeamsScreen.id),
            icon: 'assets/icons/teams.svg',
            text: 'Teams',
            tab: 3,
            isDisabled: true,
            currentTab: widget.currentTab,
          ),
          SizedBox(
            height: 13,
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
    );
  }
}
