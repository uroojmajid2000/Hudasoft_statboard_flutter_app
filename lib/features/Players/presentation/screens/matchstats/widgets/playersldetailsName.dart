import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';

class PlayersDetailsName extends StatelessWidget {
  final String text;
  final String number;
  final String image;
  const PlayersDetailsName({
    super.key,
    required this.text,
    required this.number, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: MyText.simpleText(number)),
          Expanded(
              flex: 10,
              child: Row(
                children: [
                  Image.asset(
                    // 'assets/images/circleavatar_image.png',
                    image,
                    width: 35,
                    height: 35,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: MyText.labelText(
                        // "Elijah Oliver",
                        text,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
