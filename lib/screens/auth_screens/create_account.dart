import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import '../custom_messages/signup_successful.dart';
import 'package:ryzeapp/utils/auth.dart';
import 'package:ryzeapp/widgets/custom_input.dart';
import 'package:ryzeapp/widgets/custom_mobile_number.dart';
import 'package:ryzeapp/widgets/custom_password_input.dart';
import 'package:ryzeapp/widgets/otp_input.dart';
import 'package:http/http.dart' as http;

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var confPasswordController = TextEditingController();
  bool isLoading = false;

  Future<void> signUpWithEmail() async {}

  @override
  Widget build(BuildContext context) {
    var auth = Provider.of<Authenticate>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                image: AssetImage('assets/images/kite.png'),
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                          Text(
                            'Create    ',
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF263238),
                            ),
                          ),
                          Text(
                            'Account',
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF263238),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/loginanm.gif'),
                      height: 141,
                      width: 126,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFF0F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      CustomInputField(
                          label: 'Full Name',
                          isObscurred: false,
                          controller: nameController,
                          validation: 'full name'),
                      CustomInputField(
                        label: 'Email',
                        isObscurred: false,
                        controller: emailController,
                        validation: 'email',
                      ),
                      CustomMobileNumber(
                        label: 'Mobile Number',
                        isObscurred: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 42.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF0F3),
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                            ),
                            child: Text(
                              'Send OTP',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      CustomOTPInput(label: 'Enter OTP'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not receive OTP?',
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              ' Request New',
                              style: GoogleFonts.rubik(
                                color: Color(0xffff6166),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      PasswordInputField(
                        label: 'Password',
                        controller: passwordController,
                      ),
                      CustomInputField(
                        label: 'Confirm Password',
                        isObscurred: true,
                        controller: confPasswordController,
                        validation: 'confirm password',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42.0,
                          vertical: 24,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            print(emailController.text);
                            print(passwordController.text);
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              await auth.userSignUp(
                                  emailController.text.toString(),
                                  passwordController.text.toString(),
                                  context);

                              setState(() {
                                isLoading = false;
                              });
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF263238),
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                            ),
                            child: isLoading
                                ? CircularProgressIndicator()
                                : Text(
                                    'Create Account',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ?',
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login();
                              }));
                            },
                            child: Text(
                              ' Login Here',
                              style: GoogleFonts.rubik(
                                color: Color(0xffff6166),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        '------------------Or------------------',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF263238).withOpacity(0.88)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Continue with:',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(
                            0xFF263238,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage(
                              'assets/images/google_transparent.png'),
                        ),
                      ),
                      SizedBox(
                        height: 63,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
