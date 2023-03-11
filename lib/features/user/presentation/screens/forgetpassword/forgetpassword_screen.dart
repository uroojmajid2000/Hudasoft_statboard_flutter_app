import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text_field.dart';
import '../passwordrecovery/passwordrecovery_screen.dart';

part 'widgets/body.dart';

class ForgetpasswordScreen extends StatelessWidget {
  const ForgetpasswordScreen({Key? key}) : super(key: key);

  static String id = "forgetpassword_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
