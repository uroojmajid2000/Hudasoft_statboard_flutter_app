import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/imageDetails/imagedetails.dart';

import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
import '../allteams/widgets/filters.dart';
import '../allteams/widgets/profile_container.dart';
import '../allteams/widgets/recentmatches_teams.dart';
import '../gallery/widgets/gallery_grid.dart';
import '../notification/notification_screen.dart';
import '../overview/widgets/recent_matches.dart';

part 'widgets/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String id = "profile_screen";

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
          "Profile",
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
