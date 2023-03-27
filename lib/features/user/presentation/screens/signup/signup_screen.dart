import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text_field.dart';
import '../signup_username/signup_username_screen.dart';

part 'widgets/body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static String id = "signup_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
