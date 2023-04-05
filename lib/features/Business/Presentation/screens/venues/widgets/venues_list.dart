import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/widgets/venues_container.dart';

class MyListView extends StatelessWidget {
  final List<String> venueNames = [
    'California Stadium',
    'Madison Square Garden',
    'Wembley Stadium',
    'Staples Center',
    'Camp Nou'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return VenuesContainer();
      },
    );
  }
}
