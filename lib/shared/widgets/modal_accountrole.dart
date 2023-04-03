import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../features/Business/subscription/subscription_screen.dart';
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
      height: 500,
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
                    isSelected: _selectedIndex == 0,
                    onSelect: (isSelected) {
                      _handleSelect(isSelected ? 0 : -1);
                    },
                  ),
                  CreatAccountContainer(
                    text: 'BUSINESS',
                    contentText: "You want to join an event",
                    isSelected: _selectedIndex == 1,
                    onSelect: (isSelected) {
                      _handleSelect(isSelected ? 1 : -1);
                      Navigate.to(context, SubscriptionScreen.id);
                    },
                  ),
                  CreatAccountContainer(
                    text: 'EVENT ORGANIZER',
                    contentText: "You want to organize an event",
                    isSelected: _selectedIndex == 2,
                    onSelect: (isSelected) {
                      _handleSelect(isSelected ? 2 : -1);
                    },
                  ),
                ],
              ),
            ),
            Button(
              child: MyText.buttonText('Continue'),
              onPressed: widget.onPressed,
            ),
            SizedBox(
              height: 12,
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
