import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../../shared/widgets/text_field.dart';
import '../Teams/teams_screen.dart';

part 'widgets/body.dart';

class TeamsDetails extends StatelessWidget {
  const TeamsDetails({Key? key}) : super(key: key);

  static String id = "teams_details";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Create Team',
      currentTab: 3,
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Body(),
      ),
    );
  }
}
