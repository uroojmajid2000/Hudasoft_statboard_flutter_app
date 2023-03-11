import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Image.asset(
        'assets/images/media.png',
        width: 250,
        height: 150,
        fit: BoxFit.cover, // add fit property
      ),
    );
  }
}
