import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/stats/widgets/statsdetails.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/stats/widgets/tablelist.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/stats/widgets/teamcontainer.dart';

import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../user/presentation/screens/forgetpassword/forgetpassword_screen.dart';
import '../events/widgets/matchescontainer.dart';
import '../notification/notification_screen.dart';
import '../profile/profile_screen.dart';

part 'widgets/body.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  static String id = "stats_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: [
              GestureDetector(
                  onTap: () => Navigate.to(context, NotificationScreen.id),
                  child:
                      SvgPicture.asset('assets/icons/notification_icons.svg')),
              SizedBox(width: 12),
              GestureDetector(
                onTap: () => Navigate.to(context, ProfileScreen.id),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/avatarimage.png',
                  ),
                  radius: 13,
                ),
              ),
              SizedBox(width: 5),
            ],
          )
        ],
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 10,
            height: 18,
            child: Image.asset('assets/icons/backicon.png'),
          ),
        ),
        title: Text(
          "Stats",
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
    // Layout(
    //   text: 'Stats',
    //   currentTab: 3,
    //   body:
    //   //  const SingleChildScrollView(
    //   //   scrollDirection: Axis.vertical,
    //   //   child:
    //     Body(),
    //   // ),
    // );
  }
}
