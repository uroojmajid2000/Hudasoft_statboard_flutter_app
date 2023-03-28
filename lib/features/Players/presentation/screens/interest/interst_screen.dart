import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/welcome/widgets/content.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/text.dart';

import '../../../../Players/presentation/screens/overview/overview_screen.dart';
import '../../../../Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import '../../../../Players/presentation/screens/uploadMediaDetails/widgets/tags.dart';
import '../editprofile/editprofile_screen.dart';

part 'widgets/body.dart';

class InterstScreen extends StatelessWidget {
  const InterstScreen({Key? key}) : super(key: key);

  static String id = "interst_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          "Interest Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
