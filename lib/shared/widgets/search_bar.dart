import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MySearchBar extends StatefulWidget {
  final String hintText;
  final bool required, obscureText;
  final String? prefixIcon;
  final String? suffixIcon;
  final Function onChange;
  final TextInputType keyboardType;
  final int length;
  final bool autofocus;
  final bool textCenter;

  final TextEditingController? controller;

  const MySearchBar({
    Key? key,
    required this.hintText,
    this.required = true,
    this.obscureText = false,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.length = 0,
    this.textCenter = false,
    this.autofocus = false,
    required this.onChange,
    this.controller,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  bool show = true;
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
      child: TextFormField(
        controller: widget.controller,
        enabled: true,
        autofocus: widget.autofocus,
        obscureText: widget.obscureText ? show : false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (String value) => widget.onChange(value),
        keyboardType: widget.keyboardType,
        style: TextStyle(
          color: Color(0xff272626),
          fontSize: 16,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
        ),
        textAlign: widget.textCenter ? TextAlign.center : TextAlign.start,
        inputFormatters: widget.length != 0
            ? [
                LengthLimitingTextInputFormatter(widget.length),
                FilteringTextInputFormatter.digitsOnly,
              ]
            : null,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xff495057),
            fontSize: 14,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: widget.prefixIcon != null
              ? Image.asset(
                  widget.prefixIcon!,
                  width: 1,
                  height: 1,
                )
              : null,
          border: InputBorder.none,
          // suffixIcon: widget.suffixIcon != null
          //     ? Image.asset(
          //         widget.suffixIcon!,
          //         width: 1,
          //         height: 1,
          //       )
          //     : null,
        ),
      ),
    );
  }
}
