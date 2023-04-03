
import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  final String text;
  const PaymentOptions({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(
        //   color: Color(0xff00b0f0),
        //   width: 2,
        // ),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 6,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Image.asset(
        text,
       
        ),
    );
  }
}
