import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';

class Content extends StatelessWidget {
  final String text;
  const Content({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Image.asset('assets/icons/tick.png'),
          SizedBox(width: 8),
          Expanded(
            child: MyText.labelText(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
