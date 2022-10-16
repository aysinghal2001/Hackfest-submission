import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/widgets/drawer_icon.dart';

import 'assignments.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:
            //padding: const EdgeInsets.symmetric(horizontal: 97),
            Image(
          image: AssetImage('assets/taariq/images/ryzeAppBar.png'),
          height: 100,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image(
              image: AssetImage('assets/taariq/icons/back1.png'),
              height: 30,
              width: 20),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                print('Navigation Drawer');
              },
              child: DrawerIcon(),
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 84.62,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                        alignment: Alignment.center,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                    pageBuilder: (context, animation, animationTime) {
                      return Assignments();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color(0xffFF5A5F),
                  ),
                  height: 95,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 46.94, 0),
                        child: Image.asset(
                          'assets/taariq/images/assignments.png',
                          color: Color(0xffFFF0F3),
                        ),
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 11.74, 0),
                        child: Text(
                          'Assignments',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 165.41,
              right: 63.91,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                        alignment: Alignment.center,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                    pageBuilder: (context, animation, animationTime) {
                      return Assignments();
                    },
                  ));
                },
                child: Container(
                  height: 95,
                  width: 319.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color.fromRGBO(55, 71, 79, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 42.41, 0),
                        child: Image(
                          image: AssetImage(
                            'assets/taariq/images/bonus.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.28,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(235.21, 0, 20.51, 0),
                        child: Text(
                          '    Bonus\nQuestions',
                          style: GoogleFonts.roboto(
                            color: Color(0xffFFF0F3),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 243.66,
              right: 127.54,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                        alignment: Alignment.center,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                    pageBuilder: (context, animation, animationTime) {
                      return Assignments();
                    },
                  ));
                },
                child: Container(
                  height: 95,
                  width: 254.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color(0xffFF5A5F),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(202.35, 0, 42.41, 0),
                        child: Image.asset(
                          'assets/taariq/images/tickets.png',
                          color: Color(0xffFFF0F3),
                        ),
                      ),
                      SizedBox(
                        height: 6.96,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(187.05, 0, 29.88, 0),
                        child: Text(
                          'Tickets',
                          style: GoogleFonts.roboto(
                            color: Color(0xffFFF0F3),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 320.58,
              right: 192.5,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                        alignment: Alignment.center,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                    pageBuilder: (context, animation, animationTime) {
                      return Assignments();
                    },
                  ));
                },
                child: Container(
                  height: 95,
                  width: 167.53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color.fromRGBO(55, 71, 79, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 32.5, 0),
                        child: Image.asset(
                          'assets/taariq/images/calender.png',
                          color: Color(0xffFFF0F3),
                        ),
                      ),
                      SizedBox(height: 7),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(76.06, 0, 15, 0),
                        child: Text(
                          'Calendar',
                          style: GoogleFonts.roboto(
                            color: Color(0xffFFF0F3),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 394.5,
              right: 249.03,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                        alignment: Alignment.center,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 200),
                    pageBuilder: (context, animation, animationTime) {
                      return Assignments();
                    },
                  ));
                },
                child: Container(
                  height: 95,
                  width: 132.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Color(0xffFF5A5F),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 32.89, 0),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 22.17, 0),
                        child: Text(
                          'Profile',
                          style: GoogleFonts.roboto(
                            color: Color(0xffFFF0F3),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 104,
              right: 107,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Dashboard',
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                          color: Color(0xff1B1717),
                          fontSize: 24,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Positioned(
              top: 421,
              left: 145,
              right: 0,
              bottom: 0,
              child: Container(
                height: 176,
                width: 215,
                child: Image.asset('assets/taariq/images/typing1.gif'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
