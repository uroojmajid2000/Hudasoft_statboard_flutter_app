import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bevents/widgets/matchescontainerlive.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bevents/widgets/matchescontainerliveList.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/bevents/widgets/matchescontainer.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

class MatchesView extends StatelessWidget {
  const MatchesView({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText.HeadingText(
                  "Live",
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MatchesContainerlive(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText.HeadingText(
                  "All",
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            MatchesContainer(),
            SizedBox(
              height: 20,
            ),
            MatchesContainer(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
