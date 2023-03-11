import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../transition/transition.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      primaryColor: kPrimaryColor,
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: TransitionsBuilder(),
          TargetPlatform.iOS: TransitionsBuilder(),
        },
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
