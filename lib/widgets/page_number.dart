import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageNumber extends StatelessWidget {
  final String pageNumber;
  PageNumber({required this.pageNumber});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Image(
          image: AssetImage(
            'assets/images/question.png',
          ),
        ),
        Container(
          height: 30,
          width: 43,
          decoration: BoxDecoration(
            color: Color(0xFF37474F),
          ),
        ),
        Text(
          '    Q-$pageNumber',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFFFFFFFF)),
        )
      ],
    );
  }
}
