import 'package:flutter/material.dart';

class CreatAccountContainer extends StatefulWidget {
  final String text;
  final String contentText;
  final bool isSelected;
  final Function(bool) onSelect;

  CreatAccountContainer({
    Key? key,
    required this.text,
    required this.contentText,
    this.isSelected = false,
    required this.onSelect,
  }) : super(key: key);

  @override
  State<CreatAccountContainer> createState() => _CreatAccountContainerState();
}

class _CreatAccountContainerState extends State<CreatAccountContainer> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    
      onTap: () {
        widget.onSelect(true);
        
      },
      child: Column(
        children: [
          Container(
            // width: 170,
            // width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1e000000),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
              color: Colors.white,
              border: Border.all(
                // color: _isSelected ? Color(0xff00b0f0) : Colors.white,
                color: widget.isSelected ? Color(0xff00b0f0) : Colors.white,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: _isSelected ? Color(0xff00b0f0) : Color(0xff161616),
                  color:
                      widget.isSelected ? Color(0xff00b0f0) : Color(0xff161616),
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            // width: 154,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                // "You are searching for talent",
                widget.contentText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: Color(0xff161616),
                  // color: _isSelected ? Color(0xff00b0f0) : Color(0xff161616),
                  color:
                      widget.isSelected ? Color(0xff00b0f0) : Color(0xff161616),
                  fontSize: 13,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
