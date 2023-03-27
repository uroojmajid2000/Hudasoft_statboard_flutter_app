import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/recentvenues/widgets/eventsfilters.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/recentvenues/widgets/matchesview.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/recentvenues/widgets/tournamentsview.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../notification/notification_screen.dart';
import '../profile/profile_screen.dart';

part 'widgets/body.dart';

class RecentVenuesScreen extends StatelessWidget {
  const RecentVenuesScreen({Key? key}) : super(key: key);

  static String id = "recentvenues_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: [
              GestureDetector(
                  onTap: () => Navigate.to(context, NotificationScreen.id),
                  child:
                      SvgPicture.asset('assets/icons/notification_icons.svg')),
              SizedBox(width: 12),
              GestureDetector(
                onTap: () => Navigate.to(context, ProfileScreen.id),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/avatarimage.png',
                  ),
                  radius: 13,
                ),
              ),
              SizedBox(width: 5),
            ],
          )
        ],
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          'Recent Venues',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Body(),
    );
    // Layout(
    //   text: 'Stats',
    //   currentTab: 3,
    //   body:
    //   //  const SingleChildScrollView(
    //   //   scrollDirection: Axis.vertical,
    //   //   child:
    //     Body(),
    //   // ),
    // );

    // Layout(
    //   currentTab: 1,
    //   text: 'Recent Venues',
    //   body: const SingleChildScrollView(
    //     child: Body(),
    //   ),
    // );
  }
}
