import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/inProgresstournament/widgets/statkeepersprofile_remove.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/statkeepers/widgets/statkeepersprofile_container.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/teamscard.dart';

class Statkeepers extends StatefulWidget {
  const Statkeepers({Key? key}) : super(key: key);

  @override
  State<Statkeepers> createState() => _StatkeepersState();
}

class _StatkeepersState extends State<Statkeepers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: StatkeepersProfileRemove(
                  avatar: 'assets/images/avatarimage.png',
                  name: "Elijah Oliver",
                )),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                    child: StatkeepersProfileRemove(
                  avatar: 'assets/images/michel.png',
                  name: "James Karl",
                )),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                    child: StatkeepersProfileRemove(
                  avatar: 'assets/images/michel.png',
                  name: "John Michel",
                )),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                    child: StatkeepersProfileRemove(
                  avatar: 'assets/images/robert.png',
                  name: "Robert John",
                )),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
