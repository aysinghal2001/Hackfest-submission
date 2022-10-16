import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomOTPInput extends StatefulWidget {
  final String label;
  CustomOTPInput({required this.label});
  @override
  _CustomOTPInputState createState() => _CustomOTPInputState();
}

class _CustomOTPInputState extends State<CustomOTPInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 42,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OTP(),
              OTP(),
              OTP(),
              OTP(),
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
    ;
  }
}

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 42,
      width: 63,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
        maxLength: 1,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
          hintText: '.',
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(
              0xFF263238,
            ),
          ),
          fillColor: Color(0xffff5a5f),
          focusColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            // borderSide: BorderSide(color: Colors.red),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffff5a5f), width: 2),
              borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
