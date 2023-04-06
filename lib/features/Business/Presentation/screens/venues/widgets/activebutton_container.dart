
import 'package:flutter/material.dart';

class ActiveContainer extends StatelessWidget {
  const ActiveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 22.02,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffebfdf2),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 8,
            height: 8,
            padding: const EdgeInsets.all(1),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff12b669),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          Text(
            "Active",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff027947),
              fontSize: 10,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
