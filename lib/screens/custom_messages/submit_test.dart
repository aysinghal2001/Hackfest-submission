import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/custom_black_button.dart';

class SubmitTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back),
                        ),
                      ],
                    ),
                    Text(
                      'Submit Test',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xFFFF5A5F),
                      ),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 34,
                      ),
                      child: Text(
                        'You cannot make any changes once you submit the test',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF263238),
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/telecommunicating.gif'),
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 46),
                      child: Text(
                        'Are you sure you want to submit the test ?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ptSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFF5A5F),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 46),
                      child: Text(
                        'If yes, click on submit or click back to review the test ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ptSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF263238),
                        ),
                      ),
                    ),
                    CustomBlackButton(
                      onPressed: () {},
                      label: 'Submit',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
