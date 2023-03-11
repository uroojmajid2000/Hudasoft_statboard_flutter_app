import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class OutlineButtonCustom extends StatelessWidget {
  const OutlineButtonCustom({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 18),
            side: BorderSide(
              color: kPrimaryColor,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        // child: Text(child, style: const TextStyle(fontSize: 18)),
        child: child,
      ),
    );
  }
}
