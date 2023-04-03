import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/subscription/widgets/preniumdetails.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/welcome/widgets/content.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
import '../paying/paying_screen.dart';

part 'widgets/body.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  static String id = "subscription_Screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          "Buy Subscription",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Body(),
    ));
  }
}
