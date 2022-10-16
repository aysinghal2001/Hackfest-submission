import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/custom_black_button.dart';

class StartingTests extends StatelessWidget {
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
                      'Test Screen',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xFF263238),
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
                        'You will have to attend a small MCQs test before moving further',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/studying.gif'),
                      height: 365,
                      width: 349,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 49,
                    ),
                    Text(
                      'Click continue to start test',
                      style: GoogleFonts.rubik(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF5A5F),
                      ),
                    ),
                    CustomBlackButton(
                      onPressed: () {},
                      label: 'Continue',
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
