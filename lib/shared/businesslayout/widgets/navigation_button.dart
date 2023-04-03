import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/colors.dart';
import '../../widgets/ResponsiveLayout.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon, text;
  final int tab, currentTab;
  final bool isDisabled;

  const NavigationButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
    required this.tab,
    required this.currentTab,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    Color color = currentTab == tab ? kPrimaryColor : const Color(0xFFA2A2A2);

    return MaterialButton(
        minWidth: 30,
        onPressed: onPressed,
        child: ResponsiveLayout.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    icon,
                    color: color,
                    height: 19,
                  ),
                  SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(
                      color: color,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    color: color,
                    height: 20,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    text,
                    style: TextStyle(
                      color: color,
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ));
  }
}
