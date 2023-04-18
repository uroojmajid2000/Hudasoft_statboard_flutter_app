import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool required, obscureText;
  final String? prefixIcon;
  final Function onChange;
  final TextInputType keyboardType;
  final int length;
  final bool autofocus;
  final bool textCenter;

  final TextEditingController? controller;

  const MyTextField({
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
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 6,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
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
            color: Color(0xff272626),
            fontSize: 14,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: widget.prefixIcon != null
              ?
              //  SvgPicture.asset(
              //   widget.prefixIcon!,
              // )
              Image.asset(
                  widget.prefixIcon!,
                  width: 1,
                  height: 1,
                )
              : null,

          border: InputBorder.none,

          // focusedBorder: InputBorder.none,
          // errorBorder: InputBorder.none,
          // disabledBorder: InputBorder.none,

          suffixIcon: widget.obscureText
              ? (show
                  ? IconButton(
                      icon: const Icon(Icons.visibility_off,
                          color: Color(0xff858484)),
                      onPressed: () => setState(() => show = false))
                  : IconButton(
                      icon: const Icon(
                        Icons.visibility,
                        color: Color(0xff858484),
                      ),
                      onPressed: () => setState(() => show = true)))
              : null,
        ),
        // validator: widget.required
        //     ? (value) {
        //         if (value!.isEmpty) {
        //           return 'This field is required';
        //         }
        //         return null;
        //       }
        //     : null,
      ),
    );
  }
}
