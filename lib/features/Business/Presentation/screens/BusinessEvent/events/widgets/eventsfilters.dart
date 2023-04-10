import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gamesfilter.dart';

class EventsFilters extends StatelessWidget {
  const EventsFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 52,
            height: 27,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff00b0f0),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 6,
            ),
            child: Text(
              "All",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(width: 12),
          GamesFilters(),
          SizedBox(width: 12),
          GamesFilters(),
          SizedBox(width: 12),
          GamesFilters(),
        ],
      ),
    );
  }
}
