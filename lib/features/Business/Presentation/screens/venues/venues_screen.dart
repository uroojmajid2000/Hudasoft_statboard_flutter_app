import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addbranch/addbranch_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/addvenue/addvenue_screen.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/widgets/venues_list.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

part 'widgets/body.dart';

class VenuesScreen extends StatelessWidget {
  const VenuesScreen({Key? key}) : super(key: key);

  static String id = "venues_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Branch',
      currentTab: 0,
      body: Body(),
    );
  }
}
