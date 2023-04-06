import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venuesprofile/widgets/venuesprofile_container.dart';

class VenuesProfilelist extends StatelessWidget {
  const VenuesProfilelist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            // RecentMatchesprofile(),
            VenuesProfileContainer(),
            SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
