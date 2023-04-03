import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/modal_accountrole.dart';
import '../../../../../shared/widgets/outline_button.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../../shared/widgets/text_field.dart';

import '../../../../Players/presentation/screens/overview/overview_screen.dart';
import '../forgetpassword/forgetpassword_screen.dart';

part 'widgets/body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  static String id = "signin_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
