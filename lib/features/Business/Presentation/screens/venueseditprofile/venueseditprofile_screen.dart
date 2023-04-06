import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesprofile/venuesprofile_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';
part 'widgets/body.dart';

class VenuesEditProfileScreen extends StatelessWidget {
  const VenuesEditProfileScreen({Key? key}) : super(key: key);

  static String id = "venueseditprofile_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          "Edit Profile",
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
