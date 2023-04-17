import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/BimageDetails/bimagedetails.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bgallery/bgallery_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesedit/venuesedit_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venueseditprofile/venueseditprofile_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesprofile/widgets/venues_profilelist.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/allteams/widgets/filters.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/imageDetails/imagedetails.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/notification_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/profile/profile_screen.dart';

import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class VenuesProfileScreen extends StatelessWidget {
  const VenuesProfileScreen({Key? key}) : super(key: key);

  static String id = "venuesprofile_screen";

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
              SizedBox(width: 14),
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
          "Venues",
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
