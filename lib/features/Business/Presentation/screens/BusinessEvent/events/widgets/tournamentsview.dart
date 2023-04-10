import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/events/widgets/requestingtournaments.dart';

import 'joiningtournaments.dart';

class TournamentsView extends StatelessWidget {
  const TournamentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          SizedBox(width: double.infinity, child: RequestingTournaments()),
          SizedBox(
            height: 20,
          ),
          SizedBox(width: double.infinity, child: JoiningTournaments()),
        ],
      ),
    );
  }
}
