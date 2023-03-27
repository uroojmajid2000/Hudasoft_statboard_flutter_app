import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text_field.dart';
import '../signup_password/signup_password_screen.dart';

part 'widgets/body.dart';

class SignupUsernameScreen extends StatelessWidget {
  const SignupUsernameScreen({Key? key}) : super(key: key);

  static String id = "signup_username_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
