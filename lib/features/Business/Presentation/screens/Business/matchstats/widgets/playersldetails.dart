import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';


class PlayersDetails extends StatelessWidget {
  const PlayersDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: MyText.simpleText('#')),
          Expanded(flex: 10, child: MyText.simpleText('Players')),
        ],
      ),
    );
  }
}
