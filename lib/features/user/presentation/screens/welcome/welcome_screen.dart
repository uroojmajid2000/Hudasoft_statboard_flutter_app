import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/welcome/widgets/content.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';

import '../../../../Players/presentation/screens/overview/overview_screen.dart';
import '../forgetpassword/forgetpassword_screen.dart';
import '../sportsInterst/sportsinterst_screen.dart';

part 'widgets/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static String id = "WelcomeScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
