import 'package:flutter/material.dart';

class NotificationEventContainer extends StatelessWidget {
  const NotificationEventContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 67,
      color: Color(0xfff3f1f1),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/icons/football.png',
                ),
                radius: 20,
              ),
              SizedBox(width: 10),
              Expanded(
                  child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your event of ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    TextSpan(
                      text: 'Football at California\nStadium has ended. ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              )),
              SizedBox(
                // width: 13,
                // height: 15,
                child: Text(
                  "1d",
                  style: TextStyle(
                    color: Color(0xff737373),
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
