import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/custom_black_button.dart';

class TestFail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Expanded(
                      child: Image(
                          image: AssetImage('assets/images/upper_arrow.png'))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Image(
                  image: AssetImage(
                    'assets/images/pay_attention.gif',
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'You failed the test !!',
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFFFF5A5F),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Ohh !! you failed the test. Don’t worry you still have one attempt left.',
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
                label: 'Continue',
              )
            ],
          ),
        ),
      ),
    );
  }
}
