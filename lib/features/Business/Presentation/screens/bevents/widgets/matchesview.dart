import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/bevents/widgets/matchescontainer.dart';

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
          MatchesContainer(),
          SizedBox(
            height: 20,
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
    );
  }
}
