import 'package:flutter/material.dart';
import '../../../../../shared/layout/layout_screen.dart';

part 'widgets/body.dart';

class AllTeams extends StatelessWidget {
  const AllTeams({Key? key}) : super(key: key);

  static String id = "all_teams";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Teams',
      currentTab: 3,
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Body(),
      ),
    );
  }
}
