import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/profile/widgets/recentmatches_profile.dart';

class recentmatchesProfilelist extends StatelessWidget {
  const recentmatchesProfilelist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            RecentMatchesprofile(),
            SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
