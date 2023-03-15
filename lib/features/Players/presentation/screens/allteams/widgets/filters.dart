import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function(bool) onChanged;

  Filters({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isSelected);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Color(0xff00b0f0) : Colors.white,
          border: Border.all(
            color: isSelected ? Color(0xff00b0f0) : Color(0xff8e8e8e),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xff8e8e8e),
                fontSize: 14,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
