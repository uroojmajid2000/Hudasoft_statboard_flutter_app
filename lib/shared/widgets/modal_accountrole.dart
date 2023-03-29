import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../features/user/presentation/screens/signin/widgets/createaccount_container.dart';

class CustomCreateAccountModal {
  static void show({
    required BuildContext context,
    required VoidCallback onPressed,
  }) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext bc) {
        String selectedContainer = '';
        return Container(
          height: 550,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Center(
                          child: MyText.selectRole(
                        "Select Role",
                      )),
                    ),
                    GestureDetector(
                      child: MyText.x(
                        'X',
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    children: [
                      CreatAccountContainer(
                        text: "PLAYER",
                        contentText: "You want to host an event",
                      ),
                      CreatAccountContainer(
                        text: 'BUSINESS',
                        contentText: "You want to join an event",
                      ),
                      CreatAccountContainer(
                        text: 'EVENT ORGANIZER',
                        contentText: "You want to organize an event",
                      ),
                    ],
                  ),
                ),
                Button(
                  child: MyText.buttonText('Continue'),
                  onPressed: onPressed,
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
