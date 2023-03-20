import 'package:flutter/cupertino.dart';

class Teams extends StatefulWidget {
  const Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('teams'),
      ],
    );
  }
}
