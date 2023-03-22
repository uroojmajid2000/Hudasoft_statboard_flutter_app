import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/addteams/widgets/invitefriends.dart';

import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';
import '../teamsdetails/widgets/text_field_team.dart';

part 'widgets/body.dart';

class EditTeamsScreen extends StatelessWidget {
  const EditTeamsScreen({Key? key}) : super(key: key);

  static String id = "editteams_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Edit Team",
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
