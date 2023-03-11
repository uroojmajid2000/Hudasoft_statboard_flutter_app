
import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class MyDropdown extends StatelessWidget {
  final List<String> items;
  final String? selected;
  final onChange;

  const MyDropdown({
    super.key,
    required this.items,
    required this.selected,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );

    return DropdownButtonFormField(
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        filled: true,
        fillColor: kTextFieldColor,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                )),
          )
          .toList(),
      value: selected,
      onChanged: onChange,
      style: TextStyle(
        
        color: Color(0xFF828282),
        fontSize: 16,
      ),
    );
  }
}
