import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/imageDetails/widgets/tags.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/notification/widgets/notification_container.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/notification/widgets/notification_event.dart';

import '../allteams/widgets/filters.dart';
import '../uploadmedia/upload_media.dart';

part 'widgets/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static String id = "notification_screen";

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
            child:
            Image.asset('assets/icons/backicon.png'),
          ),

     
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
        body:
         Body(),
    );

  }
}
