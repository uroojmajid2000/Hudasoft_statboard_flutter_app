import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/imageDetails/imagedetails.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/profiledetails/widgets/profile_textfield.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/dropdown.dart';

import '../../../../../../shared/widgets/text.dart';
import '../editprofile/editprofile_screen.dart';

part 'widgets/body.dart';

class NotificationEditProfileScreen extends StatelessWidget {
  const NotificationEditProfileScreen({Key? key}) : super(key: key);

  static String id = "notificationeditprofile_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
          "Notifications",
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
