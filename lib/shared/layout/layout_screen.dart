import 'package:statboard_flutter_app/shared/layout/widgets/app_bar.dart';
import 'package:statboard_flutter_app/shared/layout/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/layout/widgets/sidemenu.dart';

import '../widgets/ResponsiveLayout.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final int currentTab;
  final String text;

  Layout({
    Key? key,
    required this.body,
    this.currentTab = 0,
    required this.text,
  }) : super(key: key);

  static String id = "layout_screen";

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: ResponsiveLayout.isMobile(context)
          ? BuildAppbar(
              globalKey: _key,
              text: text,
            )
          : null,
      body: ResponsiveLayout(
        mobile: body,
        tablet: Row(
          children: [
            Expanded(child: body),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: 1,
              child: BuildSideMenu(
                currentTab: currentTab,
              ),
            ),
            Expanded(flex: 5, child: body),
          ],
        ),
      ),
      bottomNavigationBar: ResponsiveLayout.isMobile(context)
          ? BuildBottomAppBar(
              currentTab: currentTab,
            )
          : null,
    );
  }
}
