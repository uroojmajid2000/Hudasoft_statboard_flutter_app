import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/welcome/widgets/content.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
import '../venues/venues_screen.dart';

part 'widgets/body.dart';

class WelcomeBusinessScreen extends StatelessWidget {
  const WelcomeBusinessScreen({Key? key}) : super(key: key);

  static String id = "WelcomeBusiness_Screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
