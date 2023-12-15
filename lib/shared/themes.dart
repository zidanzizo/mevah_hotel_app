import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFF4E82EA);
Color blueColor = const Color(0xFF5589F0);
Color lightBlueColor = const Color(0xFF6D9CFA);
Color whiteBlueColor = const Color(0xFFE4EDFF);
Color bodyBackgroundColor = const Color(0xFFFBFBFB);
Color whiteColor = const Color(0xFFFFFFFF);
Color blackColor = const Color(0xFF2A2B3D);
Color greyColor = const Color(0xFFB7B7B7);
Color greyMenuColor = const Color(0xFFD8D8D8);
Color orangeColor = const Color(0xFFF2735B);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// font family (use this if user medium, semiBold, extrabold, black)
String? lightText = GoogleFonts.poppins(fontWeight: light).fontFamily;
String? mediumText = GoogleFonts.poppins(fontWeight: medium).fontFamily;
String? semiBoldText = GoogleFonts.poppins(fontWeight: semiBold).fontFamily;
String? extraBoldText = GoogleFonts.poppins(fontWeight: extraBold).fontFamily;
String? blackText = GoogleFonts.poppins(fontWeight: black).fontFamily;

TextStyle primaryTextStyle = TextStyle(
  color: primaryColor,
);

TextStyle whiteTextStyle = TextStyle(
  color: whiteColor,
);

TextStyle blackTextStyle = TextStyle(
  color: blackColor,
);

TextStyle greyTextStyle = TextStyle(
  color: greyColor,
);

TextStyle greyMenuTextStyle = TextStyle(
  color: greyMenuColor,
);
TextStyle orangeTextStyle = TextStyle(
  color: orangeColor,
  fontFamily: mediumText,
  fontSize: 12,
);
