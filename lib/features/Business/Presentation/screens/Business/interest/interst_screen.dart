import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/teamsdetails/widgets/text_field_team.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/uploadMediaDetails/widgets/tags.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/dropdown.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

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
          "Profile Details",
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
