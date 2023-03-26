import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text_field.dart';
import '../signup_verification/signupverification_screen.dart';

part 'widgets/body.dart';

class SignupPasswordScreen extends StatelessWidget {
  const SignupPasswordScreen({Key? key}) : super(key: key);

  static String id = "signup_password_screen_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
