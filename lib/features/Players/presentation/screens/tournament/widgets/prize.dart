import 'package:flutter/cupertino.dart';

class Prize extends StatefulWidget {
  const Prize({super.key});

  @override
  State<Prize> createState() => _PrizeState();
}

class _PrizeState extends State<Prize> {
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Text('prize'),
    ],);
  }
}