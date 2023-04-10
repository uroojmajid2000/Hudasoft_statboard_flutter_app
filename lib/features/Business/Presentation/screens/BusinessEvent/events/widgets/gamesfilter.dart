
import 'package:flutter/material.dart';

class GamesFilters extends StatelessWidget {
  const GamesFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xff8e8e8e),
          width: 1,
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/football.png'),
          SizedBox(width: 5),
          Text(
            "Football",
            style: TextStyle(
              color: Color(0xff8e8e8e),
              fontSize: 13,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
