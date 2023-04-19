import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  final List<String> items;
  final String? selected;
  final onChange;

  const MyDropdown({
    Key? key,
    required this.items,
    required this.selected,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 6,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            // prefixIcon: Icon(Icons.arrow_drop_down),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(8, 14, 8, 14)),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(
                    color: Color(0xff272626),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
            .toList(),
        value: selected,
        onChanged: onChange,
        style: TextStyle(
          color: Color(0xff272626),
          fontSize: 16,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
