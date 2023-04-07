import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/teamsdetails/widgets/text_field_team.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/dropdown.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../Teams/teams_screen.dart';

part 'widgets/body.dart';

class TeamsDetails extends StatelessWidget {
  const TeamsDetails({Key? key}) : super(key: key);

  static String id = "teams_details";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Create Team',
      currentTab: 3,
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Body(),
      ),
    );
  }
}
