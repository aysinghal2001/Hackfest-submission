import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chosen extends StatelessWidget {
  final int optionNumber;
  Chosen({required this.optionNumber});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        alignment: Alignment.center,
        height: 42,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFFFF5A5F),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Color(0xFFFF5A5F),
            width: 2,
          ),
        ),
        child: Text(
          'Option $optionNumber',
          style: GoogleFonts.ptSans(
            fontWeight: FontWeight.w700,
            color: Color(0xFFFFFFFF),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
