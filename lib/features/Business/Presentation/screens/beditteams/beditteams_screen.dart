import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/editteams/widgets/invitefriends.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class BEditTeamsScreen extends StatelessWidget {
  const BEditTeamsScreen({Key? key}) : super(key: key);

  static String id = "beditteams_screen";

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
        actions: [
          SvgPicture.asset('assets/icons/deleteicon.svg'),
          SizedBox(
            width: 8,
          )
        ],
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
