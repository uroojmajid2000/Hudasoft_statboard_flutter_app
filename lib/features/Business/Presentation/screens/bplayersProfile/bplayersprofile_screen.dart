import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/filters.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/notification_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/profile/profile_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/profile/widgets/recentmatches_profilelist.dart';

import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
// import '../allteams/widgets/filters.dart';
// import '../allteams/widgets/profile_container.dart';
// import '../allteams/widgets/recentmatches_teams.dart';
// import '../gallery/widgets/gallery_grid.dart';
// import '../imageDetails/imagedetails.dart';
// import '../notification/notification_screen.dart';
// import '../overview/widgets/recent_matches.dart';
// import '../profile/profile_screen.dart';
// import '../profile/widgets/recentmatches_profilelist.dart';

part 'widgets/body.dart';

class BPlayersProfileScreen extends StatelessWidget {
  const BPlayersProfileScreen({Key? key}) : super(key: key);

  static String id = "bplayersprofile_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
          "Teams",
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
  }
}
