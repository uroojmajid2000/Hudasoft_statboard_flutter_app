import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/subscription/subscription_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/overview/overview_screen.dart';
import 'package:statboard_flutter_app/features/user/presentation/screens/signup/signup_screen.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../features/user/presentation/screens/signin/widgets/createaccount_container.dart';
import '../routes/navigate.dart';

class CreateAccountModal extends StatefulWidget {
  final VoidCallback onPressed;

  const CreateAccountModal({required this.onPressed});

  @override
  _CreateAccountModalState createState() => _CreateAccountModalState();
}

class _CreateAccountModalState extends State<CreateAccountModal> {
  int _selectedIndex = -1;

  void _handleSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: SvgPicture.asset('assets/icons/cuticon.svg'),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       width: 170,
            //       child: CreatAccountContainer(
            //         text: "PLAYER",
            //         contentText: "You want to host an event",
            //         isSelected: _selectedIndex == 0,
            //         onSelect: (isSelected) {
            //           _handleSelect(isSelected ? 0 : -1);
            //           // Navigate.to(context, OverviewScreen.id);
            //         },
            //       ),
            //     ),
            //     // SizedBox(
            //     //   width: 10,
            //     // ),
            //     SizedBox(
            //       width: 170,
            //       child: CreatAccountContainer(
            //         text: 'BUSINESS',
            //         contentText: "You want to host an event",
            //         isSelected: _selectedIndex == 1,
            //         onSelect: (isSelected) {
            //           _handleSelect(isSelected ? 1 : -1);
            //           // Navigate.to(context, SubscriptionScreen.id);
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 8,
            // ),

            // SizedBox(
            //   width: 170,
            //   child: CreatAccountContainer(
            //     text: 'SCOUT',
            //     contentText: "You are searching for talent",
            //     isSelected: _selectedIndex == 2,
            //     onSelect: (isSelected) {
            //       _handleSelect(isSelected ? 2 : -1);
            //     },
            //   ),
            // ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 0,
                children: [
                  CreatAccountContainer(
                    text: "PLAYER",
                    contentText: "You want to host an event",
                    isSelected: _selectedIndex == 0,
                    onSelect: (isSelected) {
                      _handleSelect(isSelected ? 0 : -1);
                      // Navigate.to(context, OverviewScreen.id);
                    },
                  ),
                  CreatAccountContainer(
                    text: 'BUSINESS',
                    contentText: "You want to join an event",
                    isSelected: _selectedIndex == 1,
                    onSelect: (isSelected) {
                      _handleSelect(isSelected ? 1 : -1);
                      // Navigate.to(context, SubscriptionScreen.id);
                    },
                  ),
                  CreatAccountContainer(
                    text: 'SCOUT',
                    contentText: "You want to organize an event",
                    isSelected: _selectedIndex == 2,
                    onSelect: (isSelected) {
                      _handleSelect(isSelected ? 2 : -1);
                    },
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 8,
            ),
            Button(
              child: MyText.buttonText('Continue'),
              onPressed: () {
                if (_selectedIndex == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                } else if (_selectedIndex == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SubscriptionScreen()),
                    // builder: (context) => SignupScreen()),
                  );
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

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
        return CreateAccountModal(onPressed: onPressed);
      },
    );
  }
}
