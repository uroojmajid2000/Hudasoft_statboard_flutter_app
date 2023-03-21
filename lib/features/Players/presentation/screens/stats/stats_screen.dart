import 'package:flutter/material.dart';

import '../../../../../shared/layout/layout_screen.dart';
import '../../../../user/presentation/screens/forgetpassword/forgetpassword_screen.dart';

part 'widgets/body.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  static String id = "stats_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Stats',
      currentTab: 3,
      body:
      //  const SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: 
        Body(),
      // ),
    );
  }
}
