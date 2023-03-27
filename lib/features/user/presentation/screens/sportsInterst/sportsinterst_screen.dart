import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/welcome/widgets/content.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/text.dart';

import '../../../../Players/presentation/screens/overview/overview_screen.dart';
import '../../../../Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import '../../../../Players/presentation/screens/uploadMediaDetails/widgets/tags.dart';

part 'widgets/body.dart';

class SportsInterstScreen extends StatelessWidget {
  const SportsInterstScreen({Key? key}) : super(key: key);

  static String id = "sportsinterst_Screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
