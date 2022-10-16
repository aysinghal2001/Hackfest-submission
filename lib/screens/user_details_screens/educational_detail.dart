import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'account_screen.dart';
import 'package:ryzeapp/widgets/custom_input.dart';

class EducationalDetail extends StatefulWidget {
  final Map personalDetailsMap;
  EducationalDetail({required this.personalDetailsMap});
  @override
  _EducationalDetailState createState() => _EducationalDetailState();
}

class _EducationalDetailState extends State<EducationalDetail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var collegeName = TextEditingController();
  var course = TextEditingController();
  var graduationYear = TextEditingController();
  var other = TextEditingController();
  bool isFront = false;
  bool isBack = false;
  bool isCpp = false;
  bool isJava = false;
  bool isPython = false;
  bool isOthers = false;
  @override
  Widget build(BuildContext context) {
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
                            'Educational',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF263238),
                            ),
                          ),
                          Text(
                            'Details            ',
                            textAlign: TextAlign.start,
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
                      image: AssetImage('assets/images/challenge.gif'),
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
                        label: 'College Name',
                        isObscurred: false,
                        controller: collegeName,
                        validation: 'College Name',
                      ),
                      CustomInputField(
                        label: 'Course',
                        isObscurred: false,
                        controller: course,
                        validation: 'Course',
                      ),
                      CustomInputField(
                        label: 'Graduation Year',
                        isObscurred: false,
                        controller: graduationYear,
                        validation: 'year',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Certification',
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                print(isFront);
                                print(isBack);
                                print(isCpp);
                                print(isJava);
                                print(isPython);

                                print(isOthers);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  'Upload Your Certificate',
                                  style: GoogleFonts.rubik(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF263238),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Skills',
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFront = !isFront;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    isFront
                                        ? Icons.check_box_sharp
                                        : Icons.check_box_outline_blank_sharp,
                                    color: Color(0xffffa6aa),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Front-end Development',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isBack = !isBack;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    isBack
                                        ? Icons.check_box_sharp
                                        : Icons.check_box_outline_blank_sharp,
                                    color: Color(0xffffa6aa),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Back-end Development',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isCpp = !isCpp;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    isCpp
                                        ? Icons.check_box_sharp
                                        : Icons.check_box_outline_blank_sharp,
                                    color: Color(0xffffa6aa),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'DSA in C++',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isJava = !isJava;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    isJava
                                        ? Icons.check_box_sharp
                                        : Icons.check_box_outline_blank_sharp,
                                    color: Color(0xffffa6aa),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'DSA in Java',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isPython = !isPython;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    isPython
                                        ? Icons.check_box_sharp
                                        : Icons.check_box_outline_blank_sharp,
                                    color: Color(0xffffa6aa),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'DSA in Python',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isOthers = !isOthers;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    isOthers
                                        ? Icons.check_box_sharp
                                        : Icons.check_box_outline_blank_sharp,
                                    color: Color(0xffffa6aa),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    'Others',
                                    style: GoogleFonts.ptSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF263238),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            TextFormField(
                              controller: other,
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              onChanged: (inputEmail) {},
                              decoration: InputDecoration(
                                hintText: 'If choose others, please specify',
                                hintStyle: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF263238).withOpacity(0.75)),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff5a5f),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff5a5f),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42.0,
                          vertical: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Map educationDetails = {
                                'College Name': collegeName.text.toString(),
                                'Course': course.text.toString(),
                                'Graduation Year':
                                    graduationYear.text.toString(),
                                'Skills': {
                                  'Front-end': isFront,
                                  'Back-end': isBack,
                                  'DSA in C++': isCpp,
                                  'DSA in Java': isJava,
                                  'Others': isOthers
                                },
                                'Others': other.text.toString()
                              };
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return AccountDetailScreen(
                                  educationalDetailsMap: educationDetails,
                                  personalDetailsMap: widget.personalDetailsMap,
                                );
                              }));
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
                        height: 34,
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
