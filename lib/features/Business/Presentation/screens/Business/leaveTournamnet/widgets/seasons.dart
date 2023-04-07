import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/joinTournamnet/widgets/seasonscontainer.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/teamscard.dart';

import '../../events/widgets/matchescontainer.dart';

class Seasons extends StatefulWidget {
  const Seasons({super.key});

  @override
  State<Seasons> createState() => _SeasonsState();
}

class _SeasonsState extends State<Seasons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            SeasonsContainer(),
            SizedBox(
              height: 20,
            ),
            SeasonsContainer(),
            SizedBox(
              height: 20,
            ),
            SeasonsContainer(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
