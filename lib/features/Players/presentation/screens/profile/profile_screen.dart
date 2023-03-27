import 'package:flutter/material.dart';

import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
import '../allteams/widgets/filters.dart';
import '../allteams/widgets/profile_container.dart';
import '../allteams/widgets/recentmatches_teams.dart';

part 'widgets/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String id = "profile_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
