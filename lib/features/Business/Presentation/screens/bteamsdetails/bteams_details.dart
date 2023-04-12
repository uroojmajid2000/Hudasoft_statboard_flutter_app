import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bteams/bteams_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class BTeamsDetails extends StatelessWidget {
  const BTeamsDetails({Key? key}) : super(key: key);

  static String id = "bteams_details";

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
