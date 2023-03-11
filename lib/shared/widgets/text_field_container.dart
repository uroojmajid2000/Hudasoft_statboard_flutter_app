import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const TextFieldContainer(
      {super.key, required this.child, required this.height, this.width = 0.0});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
        // SizedBox(
        // width: width == 0.0 ? size.width * 0.8 : width,
        // height: height,
        // child:
        Container(
      height: 5,
      width: 44,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
