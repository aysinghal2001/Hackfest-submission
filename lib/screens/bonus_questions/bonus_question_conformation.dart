import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/utils/Utility.dart';

import 'bonus_question_submitted.dart';

class BonusQuestionSubmission extends StatefulWidget {
  const BonusQuestionSubmission({Key? key}) : super(key: key);

  @override
  _BonusQuestionSubmissionState createState() =>
      _BonusQuestionSubmissionState();
}

class _BonusQuestionSubmissionState extends State<BonusQuestionSubmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //heading
                Text(
                  "Submit Test",
                  textAlign: TextAlign.center,
                  style: Utility()
                      .customColorHeadingTextStyle(Color(0xffFF5A5F), 24),
                ),

                //sub heading
                Text("You cannot make any changes once you submit the test",
                    textAlign: TextAlign.center,
                    style: Utility()
                        .customColorPTSansHeadingTextStyle(Colors.black, 18)),

                //gif image
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/arun/images/bonusQuestion/bonus_submit.gif",
                    height: 268,
                  ),
                ),
                //text under gif
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text("Are you sure you want to submit the test ?",
                      textAlign: TextAlign.center,
                      style: Utility().customColorPTSansHeadingTextStyle(
                          Color(0xffFF5A5F), 18)),
                ),
                Text(
                  "If yes, click on submit or click back to review the test ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => BonusQuestionSubmitted()));
                    },
                    child: Container(
                      // color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
