import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/passwordrecovery/widgets/otp_textfield.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/welcome/welcome_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/modal_bottomsheet.dart';
import '../../../../../shared/widgets/text.dart';
import '../newpassword/newpassword_screen.dart';

part 'widgets/body.dart';

class SignupVerificationScreen extends StatelessWidget {
  const SignupVerificationScreen({Key? key}) : super(key: key);

  static String id = "signupverification_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
