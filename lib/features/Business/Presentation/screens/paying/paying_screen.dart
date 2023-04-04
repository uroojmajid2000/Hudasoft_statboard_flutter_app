import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/paying/widgets/paymentoptions.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
import '../welcomebusiness/welcomebusiness_screen.dart';

part 'widgets/body.dart';

class PayingScreen extends StatelessWidget {
  const PayingScreen({Key? key}) : super(key: key);

  static String id = "paying_Screen";

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
        // title: Text(
        //   "payingSubscription",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 25,
        //     fontFamily: "Montserrat",
        //     fontWeight: FontWeight.w700,
        //   ),
        // ),
      ),
      body:
          SingleChildScrollView(scrollDirection: Axis.vertical, child: Body()),
    ));
  }
}
