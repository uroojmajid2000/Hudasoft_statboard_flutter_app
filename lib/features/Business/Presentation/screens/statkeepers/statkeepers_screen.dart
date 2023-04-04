import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';

part 'widgets/body.dart';

class StatKeeperScreen extends StatelessWidget {
  const StatKeeperScreen({Key? key}) : super(key: key);

  static String id = "statkeepers_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'StatKeeperScreen',
      currentTab: 1,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
