import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/screens/test_screens/test_screen_2.dart';
import 'package:ryzeapp/widgets/custom_drawer.dart';
import 'package:ryzeapp/widgets/drawer_icon.dart';
import 'package:ryzeapp/widgets/options/chosen.dart';
import 'package:ryzeapp/widgets/options/unchosen.dart';
import 'package:ryzeapp/widgets/page%20indicators/future.dart';
import 'package:ryzeapp/widgets/page%20indicators/present.dart';
import 'package:ryzeapp/widgets/page_number.dart';

class TestScreen1 extends StatefulWidget {
  @override
  _TestScreen1State createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isChosenOne = false;
  bool isChosenTwo = false;
  bool isChosenThree = false;
  bool isChosenFour = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: CustomDrawer(),
        body: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFFFF0F3),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      24,
                      24,
                      20,
                      0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color(0xFF263238),
                        ),
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState!.openEndDrawer();
                          },
                          child: DrawerIcon(),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Test Screen',
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFF263238),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/clock 1.png',
                          ),
                          height: 36,
                          width: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '07:53',
                          style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFFFF5A5F),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Present(number: '1'),
                        SizedBox(
                          width: 6,
                        ),
                        Future(
                          number: '2',
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Future(
                          number: '3',
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Future(
                          number: '4',
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Future(
                          number: '5',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        PageNumber(
                          pageNumber: '1',
                        ),
                        Expanded(
                          child: Text(
                            'Contrary to popular belief, Lorem Ipsum is not simply random text. Lorem Ipsum.',
                            style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF37474f),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChosenOne = true;
                          isChosenTwo = false;
                          isChosenThree = false;
                          isChosenFour = false;
                        });
                      },
                      child: isChosenOne
                          ? Chosen(
                              optionNumber: 1,
                            )
                          : UnChosen(
                              optionNumber: 1,
                            ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChosenOne = false;
                          isChosenTwo = true;
                          isChosenThree = false;
                          isChosenFour = false;
                        });
                      },
                      child: isChosenTwo
                          ? Chosen(
                              optionNumber: 2,
                            )
                          : UnChosen(
                              optionNumber: 2,
                            ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChosenOne = false;
                          isChosenTwo = false;
                          isChosenThree = true;
                          isChosenFour = false;
                        });
                      },
                      child: isChosenThree
                          ? Chosen(
                              optionNumber: 3,
                            )
                          : UnChosen(
                              optionNumber: 3,
                            ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChosenOne = false;
                          isChosenTwo = false;
                          isChosenThree = false;
                          isChosenFour = true;
                        });
                      },
                      child: isChosenFour
                          ? Chosen(
                              optionNumber: 4,
                            )
                          : UnChosen(
                              optionNumber: 4,
                            ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return TestScreen2();
                          }));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF263238),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          child: Text(
                            'Next',
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
                    SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
