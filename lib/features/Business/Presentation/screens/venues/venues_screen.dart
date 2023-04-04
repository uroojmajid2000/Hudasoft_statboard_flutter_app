import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';

part 'widgets/body.dart';

class VenuesScreen extends StatelessWidget {
  const VenuesScreen({Key? key}) : super(key: key);

  static String id = "venues_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Venues',
      currentTab: 0,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
