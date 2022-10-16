import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Utility {
  headingTextStyle() {
    return GoogleFonts.rubik(
        fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xffFF5A5F));
  }

  onboardTextStyle() {
    return GoogleFonts.ptSans(
        fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff263238));
  }

  drColor() {
    return Color(0xffFF5A5F);
  }

  buttonColor() {
    return MaterialStateProperty.all(Color(0xff37474F));
  }

  customColorHeadingTextStyle(color, double? fontsize) {
    return GoogleFonts.rubik(
        fontSize: fontsize, fontWeight: FontWeight.w700, color: color);
  }

  customColorPTSansHeadingTextStyle(color, double? fontsize) {
    return GoogleFonts.ptSans(
        fontSize: fontsize, fontWeight: FontWeight.w700, color: color);
  }

  //bonus questionPage
  //page2
  bonusHeadingTextStyle() {
    return GoogleFonts.rubik(
      textStyle: TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  DashboardTitleColor() {
    return MaterialStateProperty.all(Color(0xff1B1717));
  }
}
