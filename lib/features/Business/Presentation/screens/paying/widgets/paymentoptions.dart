import 'package:flutter/material.dart';

class PaymentOptions extends StatefulWidget {
  final String text;

  final bool isSelected;
  final Function(bool) onSelect;

  const PaymentOptions({
    super.key,
    required this.text,
    this.isSelected = false,
    required this.onSelect,
  });

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // widget.onSelect(!widget.isSelected);
        widget.onSelect(true);
      },
      child: Container(
        width: 65,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: Color(0xff00b0f0),
          //   width: 2,
          // ),
          border: Border.all(
            // color: _isSelected ? Color(0xff00b0f0) : Colors.white,
            color: widget.isSelected ? Color(0xff00b0f0) : Colors.white,
            width: 2,
          ),
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
          widget.text,
        ),
      ),
    );
  }
}
