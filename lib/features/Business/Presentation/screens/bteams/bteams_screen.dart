import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bteamsdetails/bteams_details.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/bteams/widgets/teams_grid.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import '../../../../../resources/colors.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class BTeamsScreen extends StatelessWidget {
  const BTeamsScreen({Key? key}) : super(key: key);

  static String id = "bteams_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Teams',
      currentTab: 3,
      body: Body(),
    );
  }
}
