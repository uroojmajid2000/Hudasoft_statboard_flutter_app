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
          height: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Center(
                        child: Text(
                          "Select Role",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'X',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff535353),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),






                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: CreatAccountContainer(
                        text: "PLAYER",
                        contentText: "You want to host an event",
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: CreatAccountContainer(
                        text: 'BUSINESS',
                        contentText: "You want to join an event",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),


  


                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: CreatAccountContainer(
                        text: 'EVENT ORGANIZER',
                        contentText: "You want to organize an event",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Button(
                  child: MyText.buttonText('Continue'),
                  onPressed: onPressed,
                ),
                Spacer()
              ],
            ),
          ),
        );
      },
    );
  }
}
