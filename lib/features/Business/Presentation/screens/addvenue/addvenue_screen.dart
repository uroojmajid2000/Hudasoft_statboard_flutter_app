import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/branchdetails/branchdetails_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/statkeepers/statkeepers_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/venues_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesprofile/venuesprofile_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/notification_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/profile/profile_screen.dart';
import 'package:statboard_flutter_app/resources/colors.dart';
import 'package:statboard_flutter_app/shared/widgets/modal_bottomsheet.dart';
import 'package:statboard_flutter_app/shared/widgets/text_field.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/text.dart';

import '../../../../Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import '../../../../Players/presentation/screens/uploadMediaDetails/widgets/tags.dart';

part 'widgets/body.dart';

class AddVenueScreen extends StatelessWidget {
  const AddVenueScreen({Key? key}) : super(key: key);

  static String id = "addvenue_screen";

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
          "Add Venue",
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
