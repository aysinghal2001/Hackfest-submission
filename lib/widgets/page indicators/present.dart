import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Present extends StatelessWidget {
  final String number;
  Present({required this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        color: Color(0xFF37474F),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        number,
        textAlign: TextAlign.center,
        style: GoogleFonts.rubik(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(
            0xFFFFF0F3,
          ),
        ),
      ),
    );
  }
}
