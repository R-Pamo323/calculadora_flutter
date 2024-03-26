import 'package:app_calculadora/Constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyles {
  static TextStyle numBottons = GoogleFonts.rubik(
    fontSize: 24,
  );

  static TextStyle textHistory = GoogleFonts.rubik(
      textStyle: TextStyle(fontSize: 30, color: MyColors.colorHistory));
  static TextStyle textExpression = GoogleFonts.rubik(
      textStyle: TextStyle(fontSize: 50, color: MyColors.colorTexts));
}
