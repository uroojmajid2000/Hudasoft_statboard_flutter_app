import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/colors.dart';

class MyTextArea extends StatefulWidget {
  final String hintText;
  final bool required, obscureText;
  final Function onChange;
  final TextInputType keyboardType;
  final int length;
  final bool autofocus;
  final bool textCenter;
  final TextEditingController? controller;

  const MyTextArea(
      {super.key,
      required this.hintText,
      this.required = true,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.length = 0,
      this.textCenter = false,
      this.autofocus = false,
      required this.onChange,
      this.controller});

  @override
  State<MyTextArea> createState() => _MyTextAreaState();
}

class _MyTextAreaState extends State<MyTextArea> {
  bool show = true;
  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Colors.transparent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      enabled: true,
      autofocus: widget.autofocus,
      maxLines: 8,
      obscureText: widget.obscureText ? show : false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (String value) => widget.onChange(value),
      keyboardType: TextInputType.multiline,
      textAlign: widget.textCenter ? TextAlign.center : TextAlign.start,
      inputFormatters: widget.length != 0
          ? [
              LengthLimitingTextInputFormatter(widget.length),
              FilteringTextInputFormatter.digitsOnly,
            ]
          : null,
      decoration: InputDecoration(
        filled: true,
        fillColor: kTextFieldColor,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFB4B4B4),
        ),
        border: border,
        enabledBorder: border,
        disabledBorder: border,
        focusedBorder: border,
        suffixIcon: widget.obscureText
            ? (show
                ? IconButton(
                    icon: const Icon(
                      Icons.visibility,
                      color: Color(0xFFB4B4B4),
                    ),
                    onPressed: () => setState(() => show = false))
                : IconButton(
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Color(0xFFB4B4B4),
                    ),
                    onPressed: () => setState(() => show = true)))
            : null,
      ),
      validator: widget.required
          ? (value) {
              if (value!.isEmpty) {
                return 'This field is required';
              }
              return null;
            }
          : null,
    );
  }
}
