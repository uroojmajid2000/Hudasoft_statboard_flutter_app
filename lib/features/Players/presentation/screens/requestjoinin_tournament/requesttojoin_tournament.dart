import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/events/widgets/tournamentsview.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/imageDetails/widgets/tags.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/widgets/notification_container.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/notification/widgets/notification_event.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/overview_screen.dart';
import '../../../../../resources/colors.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/modal_bottomsheet.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';

import '../allteams/widgets/filters.dart';
import '../tournament/widgets/teamscard.dart';
import '../uploadmedia/upload_media.dart';

part 'widgets/body.dart';

class RequestJoiningTournament extends StatelessWidget {
  const RequestJoiningTournament({Key? key}) : super(key: key);

  static String id = "requesttojoin_tournament_screen";

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
          "Tournament",
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
