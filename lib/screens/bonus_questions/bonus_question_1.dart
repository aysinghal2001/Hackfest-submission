import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/utils/Utility.dart';
import 'package:ryzeapp/widgets/Bonus_question_attach_widget.dart';

import 'bonus_question_2.dart';

class Bonus_Question_one extends StatelessWidget {
  const Bonus_Question_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFF0F3),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/arun/images/bonusQuestion/rulesandregulationnav.png",
              width: 30,
              height: 20,
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xffFFF0F3),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: Container(
                // color: Colors.blue,
                height: 80,
                child: Text(
                  "Bonus Questions",
                  style:
                      Utility().customColorHeadingTextStyle(Colors.black, 24),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // constraints: BoxConstraints.expand(),

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          width: _width * .85,
                          // color: Colors.cyan,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Problem Statement",
                                          style: GoogleFonts.ptSans(
                                            textStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffFF5A5F)),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 11),
                                      child: Text(
                                          "Mauris a risus in magna laoreet mollis. Phasellus lobortis maximus quam id pharetra. Nam posuere vitae magna quis pretium.",
                                          style: GoogleFonts.ptSans(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  //second container
                                  // color: Colors.deepOrangeAccent,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Attachments",
                                              style: GoogleFonts.ptSans(
                                                textStyle: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xffFF5A5F)),
                                              )),
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            BonusQuestionAttachWidget(
                                              docName: "Documentation.pdf",
                                            ),
                                            BonusQuestionAttachWidget(
                                                docName:
                                                    "Design_Requirements.pdf")
                                          ],
                                        ), //marl
                                      ),
                                      //from
                                    ],
                                  ),
                                ),
                              ), //to this
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      BonusQuestionTwo()));
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.56,
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
                                            'Start Test',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    //edsfwiedj
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFF5A5F),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Skip',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                        // width: MediaQuery.of(context).size.width * 0.8,
                        height: 99,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8),
                              bottom: Radius.circular(20)),
                          border:
                              Border.all(width: 3, color: Color(0xff37474F)),
                        ),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              constraints: BoxConstraints.expand(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(8),
                                    bottom: Radius.circular(20)),
                                color: Color(0xffFFF0F3),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          "assets/arun/images/bonusQuestion/bs1question.png",
                                          height: 24,
                                        ),
                                        Text("Bonus Qns",
                                            style: GoogleFonts.rubik(
                                                textStyle:
                                                    TextStyle(fontSize: 12))),
                                        Image.asset(
                                          "assets/arun/images/bonusQuestion/line.png",
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/arun/images/bonusQuestion/bs1assignment.png",
                                    height: 30,
                                  ),
                                  Image.asset(
                                    "assets/arun/images/bonusQuestion/bs1discuss.png",
                                    height: 30,
                                  ),
                                  Image.asset(
                                    "assets/arun/images/bonusQuestion/bs1user.png",
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
