import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFF0F3),
            borderRadius: BorderRadius.circular(10.0)),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffFF5A5F),
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.only(left: 70),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xffFF5A5F),
                ),
                accountName: Text("Hi, Jon Doe",
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    textAlign: TextAlign.center),
                accountEmail: Text(
                    "Developer,Designer,\n"
                    " Freeiancer",
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    )),
                    textAlign: TextAlign.center),
                otherAccountsPictures: [
                  InkWell(
                    child: IconButton(
                      icon: Icon(Icons.close),
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                  )
                ],
                currentAccountPicture: Container(
                  padding: EdgeInsets.all(10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/bhavani/Navigation/image 2.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 30, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width * 2 / 3,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text(
                    "Dashboard",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text(
                    "Post Work",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text("Projects",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text("Earnings",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text("Contact Us",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      )),
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text("FAQ's",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text("Tips and Trics",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 0, top: 10, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, right: 30, top: 0, bottom: 0),
                  child: Text("Chat",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 30, bottom: 0),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 3.5 / 4,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffFF5A5F),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    )),
                alignment: Alignment.center,
                child: Container(
                  child: Text("Logout",
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
