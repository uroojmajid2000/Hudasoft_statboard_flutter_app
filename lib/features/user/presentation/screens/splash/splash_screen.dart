import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statboard_flutter_app/resources/colors.dart';

import '../../../../../shared/routes/navigate.dart';
import '../signup/signup_screen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String id = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void _onSuccess() {
      // if (context.read<UserCubit>().isLoggedIn()) {
      //   Navigate.next(context, HomeScreen.id);
      // } else {
      Navigate.next(context, SignupScreen.id);
      // }
    }

    void _navigateToNextScreen(VoidCallback onSuccess) async {
      await Future.delayed(const Duration(seconds: 2));
      onSuccess.call();
    }

    useEffect(() {
      _navigateToNextScreen(_onSuccess);
      return null;
    }, []);

    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/logos/statboard_logo.svg',
                ),
              ],
            ),
          ),
        ));
  }
}