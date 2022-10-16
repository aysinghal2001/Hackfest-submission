import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:ryzeapp/screens/educational.dart';

//import 'Dashboard.dart';

class LoginSuccessful extends StatelessWidget {
  const LoginSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/taariq/icons/back1.png',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
            child: Image.asset('assets/taariq/images/loginSuccess.gif'),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('Login Successful !!',
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        color: Color(0xffFF5A5F),
                        fontSize: 24,
                        fontWeight: FontWeight.bold))),
          ),
          Text(
            'You logged in successfully.\n     Go to the dashboard.',
            style: GoogleFonts.ptSans(
                textStyle: TextStyle(
                    color: Color.fromRGBO(55, 71, 79, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Dashboard()),
                // );
              },
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Go to Dashboard',
                  )),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: Size(30, 50),
                  primary: Color.fromRGBO(55, 71, 79, 1),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
