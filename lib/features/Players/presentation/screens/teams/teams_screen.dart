import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teams/widgets/teams_grid.dart';
import '../../../../../resources/colors.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';
import '../teamsdetails/teams_details.dart';

part 'widgets/body.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  static String id = "teams_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Teams',
      currentTab: 3,
      body: Body(),
    );
  }
}
