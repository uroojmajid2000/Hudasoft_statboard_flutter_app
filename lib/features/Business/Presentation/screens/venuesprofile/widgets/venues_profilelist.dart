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
      //   itemBuilder: (BuildContext context, int index) {
      //     return Column(
      //       children: [
      //         // RecentMatchesprofile(),
      //         VenuesProfileContainer(
      //           text: "Venue 2",
      //         ),
      //         SizedBox(height: 15),
      //       ],
      //     );
      //   },
      // );

      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: VenuesProfileContainer(
              text: "Venue 1",
            ),
          );
        } else if (index == 1) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: VenuesProfileContainer(
              text: "Venue 2",
            ),
          );
        } else if (index == 2) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: VenuesProfileContainer(
              text: "Venue 3",
            ),
          );
        } else {
          return Container(); // or throw an error if index > 1
        }
      },
    );
  }
}
