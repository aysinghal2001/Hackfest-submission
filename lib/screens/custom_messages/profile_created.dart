import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/custom_black_button.dart';

class ProfileCreatedSuccessfully extends StatelessWidget {
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
              Image(
                image: AssetImage('assets/images/account.gif'),
                height: 331,
                width: 343,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 27,
              ),
              Text(
                'Profile Completed Successfully',
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFFFF5A5F),
                ),
              ),
              CustomBlackButton(
                onPressed: () {},
                label: 'Continue with Tests',
              )
            ],
          ),
        ),
      ),
    );
  }
}
