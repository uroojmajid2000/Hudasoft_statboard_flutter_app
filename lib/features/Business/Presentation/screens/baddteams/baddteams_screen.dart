import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/baddteams/widgets/cancelinvite.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/baddteams/widgets/invitefriends.dart';

import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';


part 'widgets/body.dart';

class BAddTeamsScreen extends StatelessWidget {
  const BAddTeamsScreen({Key? key}) : super(key: key);

  static String id = "baddteams_screen";

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
          "Invite to Team",
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
