import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/addteams/widgets/cancelinvite.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/addteams/widgets/invitefriends.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/imageDetails/widgets/tags.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/widgets/notification_container.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/widgets/notification_event.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';




part 'widgets/body.dart';

class AddTeamsScreen extends StatelessWidget {
  const AddTeamsScreen({Key? key}) : super(key: key);

  static String id = "addteams_screen";

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
