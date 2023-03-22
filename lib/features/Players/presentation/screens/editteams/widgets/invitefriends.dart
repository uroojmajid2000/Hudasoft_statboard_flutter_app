import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';
import '../../tournament/widgets/container_button.dart';
import 'invitebutton.dart';

class InviteFiends extends StatelessWidget {
  const InviteFiends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Image.asset(
        'assets/images/michel.png',
        width: 40,
        height: 40,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyText.labelText(
            "Elijah Oliver",
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
