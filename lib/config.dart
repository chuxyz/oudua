// ignore_for_file: prefer_const_constructors

import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double blockWidth = 0.0;
  static double blockHeight = 0.0;

  void screenSizeInit(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    // Specify safe width
    screenWidth = _mediaQueryData!.size.width -
        (_mediaQueryData!.padding.left + _mediaQueryData!.padding.right);
    // Specify Safe Height
    screenHeight = _mediaQueryData!.size.height -
        (_mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom);
    blockWidth = (screenWidth / 100);
    blockHeight = (screenHeight / 100);
  }

  double sizeHeight(int ratio) => blockHeight * ratio;
  double sizeWidth(int ratio) => blockWidth * ratio;
}

Color blueGreyOpacityPt1 = Colors.blueGrey.withOpacity(0.1);
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kThemeColor,
  scaffoldBackgroundColor: Colors.white,
  bottomAppBarColor: Colors.white,
  dividerColor: Colors.grey,
  hintColor: Colors.black54,
  textTheme: TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.roboto(
        fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.roboto(
        fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.roboto(
        fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.roboto(color: Colors.black).fontFamily,
      color: kBlack3,
    ),
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
);
