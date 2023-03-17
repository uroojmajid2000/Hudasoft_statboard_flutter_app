import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';

import '../../../../../../shared/widgets/outline_button.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/avatarimage.png',
                ),
                radius: 15,
              ),
              SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                    width: 266.84,
                    height: 17.82,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Robert John (58721) ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: 'wants to follow you.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                width: 13,
                height: 15,
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
          SizedBox(
            height: 7,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 45,
              ),
              SizedBox(
                  width: 90,
                  height: 34.84,
                  child: Button(child: Text('Accept'), onPressed: () {})),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 90,
                height: 34.84,
                child: OutlineButtonCustom(
                  onPressed: () {},
                  child: Text('Reject'),
                ),
              ),
            ],
          ),
        ]));
  }
}
