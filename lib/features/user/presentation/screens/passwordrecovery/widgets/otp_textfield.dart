import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpTextField extends StatefulWidget {
  final String hintText;
  final bool required, obscureText;
  final String? prefixIcon;
  final Function onChange;
  final TextInputType keyboardType;
  final int length;
  final bool autofocus;
  final bool textCenter;

  final TextEditingController controller;

  const OtpTextField({
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
    required this.controller,
  }) : super(key: key);

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffd9d9d9),
      ),
      width: 40.73,
      height: 5,
      // color: Color(0xffd9d9d9),
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
          fontSize: 18,
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
            color: Color(0xff272626),
            fontSize: 14,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),

          border: InputBorder.none,
        ),
      ),
    );
  }
}
