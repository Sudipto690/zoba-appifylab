import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextStyle {
  static TextStyle headline1 = GoogleFonts.poppins(
      fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5);

  static TextStyle headline2 = GoogleFonts.poppins(
      fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5);

  static TextStyle headline3 =
      GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400);

  static TextStyle headline4 = GoogleFonts.poppins(
      fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25);

  static TextStyle headline5 =
      GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400);

  static TextStyle headline6 = GoogleFonts.poppins(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15);

  static TextStyle subtitle1 = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15);

  static TextStyle subtitle2 = GoogleFonts.poppins(
      color: Colors.grey,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1);

  static TextStyle bodyText1 = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5);

  static TextStyle bodyText2 = GoogleFonts.poppins(
      color: Colors.grey,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25);
  static TextStyle button = GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25);

  static TextStyle caption = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4);

  static TextStyle overline = GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5);
}
