import 'package:flutter/material.dart';

class Stylings {
  //Colors
  static Color orange = const Color(0xFFFF1515);
  static Color brown = Colors.brown.shade700;
  static Color bgColor = const Color(0xFFF6F6F6);

//textStyles
  static TextStyle titles = const TextStyle(
    fontFamily: 'Inter',
      fontSize: 21,
      fontWeight: FontWeight.w600,
      color: Colors.black
  );
  static TextStyle subTitles = const TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black
  );
  static TextStyle body = const TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w400
  );
//media
  static String imgPath = "assets/images";
}