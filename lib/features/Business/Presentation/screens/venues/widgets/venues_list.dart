import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/widgets/venues_container.dart';

class VenueListView extends StatelessWidget {
  const VenueListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const VenuesContainer(text: "California Stadium"),
            );
          } else if (index == 1) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const VenuesContainer(text: "New York Arena"),
            );
          } else {
            return Container(); // or throw an error if index > 1
          }
        },
      ),
    );
  }
}
