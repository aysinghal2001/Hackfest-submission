import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordInputField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  PasswordInputField({required this.label, required this.controller});
  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool isObscured = true;
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
          TextFormField(
            validator: (val) {
              if (val!.isEmpty) {
                return 'PASSWORD cannot be empty';
              }
              return null;
            },
            controller: widget.controller,
            obscureText: isObscured,
            cursorColor: Color(0xffff5a5f),
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            onChanged: (inputEmail) {},
            decoration: InputDecoration(
              suffix: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
                child: Image(
                  height: 18,
                  width: 18,
                  image: AssetImage('assets/images/Hide.png'),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffff5a5f),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffff5a5f),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 20,
              ),
              fillColor: Colors.white,
              filled: true,
            ),
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
