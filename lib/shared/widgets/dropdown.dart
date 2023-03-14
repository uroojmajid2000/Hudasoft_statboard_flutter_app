// import 'package:flutter/material.dart';

// import '../../resources/colors.dart';

// class MyDropdown extends StatelessWidget {
//   final List<String> items;
//   final String? selected;
//   final onChange;

//   const MyDropdown({
//     super.key,
//     required this.items,
//     required this.selected,
//     required this.onChange,
//   });

//   @override
//   Widget build(BuildContext context) {
//     OutlineInputBorder border = OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: const BorderSide(
//         color: Colors.transparent,
//       ),
//     );

//     return DropdownButtonFormField(
//       decoration: InputDecoration(
//         border: border,
//         enabledBorder: border,
//         focusedBorder: border,
//         filled: true,
//         fillColor: kTextFieldColor,
//       ),
//       items: items
//           .map(
//             (item) => DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(
//                   item,
//                 )),
//           )
//           .toList(),
//       value: selected,
//       onChanged: onChange,
//       style: TextStyle(

//         color: Color(0xFF828282),
//         fontSize: 16,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../resources/colors.dart';

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
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );

    return Container(
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
        ),
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
