import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrizeCard extends StatelessWidget {
  final String rank;
 final Color grdientcolorOne;
 final Color grdientcolorTwo;
 final String prize;
  const PrizeCard({super.key, required this.rank, required this.prize, required this.grdientcolorOne, required this.grdientcolorTwo});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343,
        height: 290.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              
              // Color(0xff67075f), Color(0xff9d366f)
      grdientcolorOne, 
      grdientcolorTwo
              
              ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
       
            Text(
              // "1st Place",
              rank,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              'assets/icons/tornamentaward.png',
              width: 135.35,
              height: 135.35,
            ),
            Text(
              // "4000",
              prize,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w800,
              ),
            )
          ],
        ));
  }
}
