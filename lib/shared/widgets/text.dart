import 'package:flutter/material.dart';

class MyText {
  //fontsize 15 w600
  static Widget labelText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      );

  //fontsize 13 w600
  static Widget forgetPassword(String text) => Text(
        text,
        style: TextStyle(
          color: Color(0xff848383),
          fontSize: 13,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      );
  //fontsize 12 grey w600
  static Widget simplegreyText(String text) => Text(
        text,
        style: TextStyle(
          color: Color(0xff6f6d6d),
          fontSize: 12,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      );
  //fontsize 12 black w600
  static Widget simpleblackText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      );
  //fontsize 12 blue w600
  static Widget simpleblueText(String text) => Text(
        text,
        style: TextStyle(
                    color: Color(0xff00b0f0),
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
      );

  //fontsize 10 w600
  static Widget viewText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      );

  //fontsize 12 w600
  static Widget simpleText(String text) => Text(
        text,
         style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
    ),
      );

  static Widget buttonText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      );

  static Widget h1(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 38.0,
          fontWeight: FontWeight.w700,
        ),
      );

  static Widget h2(String text) => Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 25.0,
        ),
      );

  static Widget body(String text) => Text(
        text,
        style: const TextStyle(
          color: Color(0xFF6E6E6E),
        ),
      );

  static Widget HeadingText(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w700,
        ),
      );
      //tournament heading
  static Widget TournamentHeadingText(String text) => Text(
        text,
       style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
      );
  static Widget tableHeading(String text) => Text(

   text,
    style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
    ),
  );
  static Widget tableRow(String text) => Text(

   text,
    style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
    ),
  );
  static Widget selectRole(String text) => Text(

   text,
     style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),);
  static Widget x(String text) => Text(

   text,
    textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff535353),
                          fontWeight: FontWeight.bold,
                        ),
  );
}
