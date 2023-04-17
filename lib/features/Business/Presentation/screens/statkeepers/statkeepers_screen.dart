import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addstatkeepers/addstatkeepers_screen.dart';
import 'package:statboard_flutter_app/resources/colors.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import 'widgets/statkeepersprofile_container.dart';

part 'widgets/body.dart';

class StatKeeperScreen extends StatelessWidget {
  const StatKeeperScreen({Key? key}) : super(key: key);

  static String id = "statkeepers_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'StatKeepers',
      currentTab: 1,
      body: Body(),
    );
  }
}
