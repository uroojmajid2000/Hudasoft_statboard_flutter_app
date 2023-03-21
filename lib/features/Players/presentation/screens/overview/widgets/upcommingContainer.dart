
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpcommingContainer extends StatelessWidget {
  const UpcommingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      height: 27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xffffc035),
          width: 1,
        ),
        color: Color(0x19ffc035),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/icons/arrow.svg'),
          Text(
            "Upcoming",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffffc035),
              fontSize: 10,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
