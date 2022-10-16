import 'package:flutter/material.dart';
import 'package:ryzeapp/screens/bonus_questions/bonus_question_1.dart';
import 'package:ryzeapp/utils/Utility.dart';
import 'package:ryzeapp/widgets/drawer_icon.dart';
import 'package:ryzeapp/widgets/listelement_withDot.dart';

class RulesAndRegulation extends StatelessWidget {
  const RulesAndRegulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> writings = [
      "You can achieve bonus points",
      "You can skip questions ",
      "Bonus questions are available all time.",
      "Avoid plagiarism",
      "Complete before due dates"
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10), child: DrawerIcon())
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.blue,
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          child: Image.asset(
                            "assets/arun/images/kite.png",
                            height: 20,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Rules and \nRegulations",
                            style: Utility()
                                .customColorHeadingTextStyle(Colors.black, 24),
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/arun/images/bonusQuestion/rulesandregulation.gif",
                    width: 103,
                    height: 108,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // constraints: BoxConstraints.expand(),

                decoration: BoxDecoration(
                    color: Color(0xffFFF0F3),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: Container(
                        // color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RuleElement(writings: writings[0]),
                            RuleElement(writings: writings[1]),
                            RuleElement(writings: writings[2]),
                            RuleElement(writings: writings[3]),
                            RuleElement(writings: writings[4]),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Bonus_Question_one()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
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
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
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
