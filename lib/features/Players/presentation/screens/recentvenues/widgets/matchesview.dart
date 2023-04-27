import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/recentvenues/widgets/matchescontainer.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

class MatchesView extends StatelessWidget {
  const MatchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              MyText.HeadingText(
                'Ongoing Match',
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          MatchesContainer(),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              MyText.HeadingText(
                'All Matches',
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          MatchesContainer(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
