import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/custom_black_button.dart';
import '../user_details_screens/personal_screen.dart';

class SignUpSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/email_campaign.gif'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image(
                width: 362,
                height: 315,
                image: AssetImage('assets/images/reading_list.gif'),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Signup',
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFFFF5A5F),
                ),
              ),
              Text(
                'Successful',
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFFFF5A5F),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              CustomBlackButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return PersonalScreen();
                  }));
                },
                label: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
