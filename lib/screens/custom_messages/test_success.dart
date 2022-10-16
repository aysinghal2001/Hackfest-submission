import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/custom_black_button.dart';

class TestSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage('assets/images/upper_arrow_2.png'),
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Image(
                  image: AssetImage(
                    'assets/images/powerful.gif',
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Congratulations !!',
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
                  'You successfully passed the test. Click on the below button to continue.',
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
