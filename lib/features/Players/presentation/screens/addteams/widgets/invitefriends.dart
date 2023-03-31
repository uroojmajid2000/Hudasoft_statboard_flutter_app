import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';
import '../../tournament/widgets/container_button.dart';
import 'invitebutton.dart';

class InviteFiends extends StatelessWidget {
  final String img;
  final String text;
  const InviteFiends({
    super.key, required this.img, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(
        // 'assets/images/michel.png',
        img,
        width: 40,
        height: 40,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyText.labelText(
            // "Elijah Oliver",
            text
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      GestureDetector(child: InvitecontainerButton())
    ]);
  }
}
