import 'package:flutter/material.dart';
import '../../../../../shared/layout/layout_screen.dart';

part 'widgets/body.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  static String id = "teams_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Teams',
      currentTab: 3,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
