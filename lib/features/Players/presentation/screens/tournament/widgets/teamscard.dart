import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/text.dart';

class TeamsCard extends StatefulWidget {
  final String alphabet;
  final String text;
  final Color color;

  const TeamsCard(
      {super.key,
      required this.text,
      required this.color,
      required this.alphabet,
  });

  @override
  State<TeamsCard> createState() => _TeamsCardState();
}

class _TeamsCardState extends State<TeamsCard> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
   
      child: Container(
        width: 160,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 8,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.white,
          border: Border.all(
            color: _isSelected ? Color(0xff00b0f0) : Colors.white,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                // backgroundColor: Color(0xff5642a9),
                backgroundColor: widget.color,
                radius: 20,
                child: Text(
                  // "T",
                  widget.alphabet,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                )),
            SizedBox(
              height: 8,
            ),
            MyText.labelText(
              // "Tornado",
              widget.text,
            ),
          ],
        ),
      ),
    );
  }
}
