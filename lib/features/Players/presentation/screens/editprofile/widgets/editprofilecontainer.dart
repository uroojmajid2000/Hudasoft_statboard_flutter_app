import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileContaoner extends StatelessWidget {
  final String text;
  final String icon;
  const EditProfileContaoner({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                // 'assets/icons/profileicon.svg'
                icon,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    // "Profile Details",
                    text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset('assets/icons/selecticon.svg'),
            ],
          ),
        ));
  }
}
