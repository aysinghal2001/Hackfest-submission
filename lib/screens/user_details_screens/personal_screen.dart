import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'educational_detail.dart';
import 'package:ryzeapp/utils/auth.dart';
import 'package:ryzeapp/widgets/custom_input.dart';

class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var address = TextEditingController();
  var linkedin = TextEditingController();
  var github = TextEditingController();
  var profile = TextEditingController();

  var selectedGender = 'Female';
  var selectedDate = '06';
  var selectedMonth = '05';
  var selectedYear = '1998';
  final List<String> genderList = ['Male', 'Female'];
  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> codes = [];
    for (String gender in genderList) {
      codes.add(
        DropdownMenuItem(
          child: Text(
            gender,
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF263238),
            ),
          ),
          value: gender,
        ),
      );
    }

    return DropdownButton<String>(
      isExpanded: true,
      dropdownColor: Colors.white,
      iconEnabledColor: Color(0xFF263238),
      value: selectedGender,
      items: codes,
      onChanged: (value) {
        setState(
          () {
            selectedGender = value.toString();
          },
        );
      },
    );
  }

  List giveYears() {
    List<String> years = [];
    for (int i = 1980; i < 2021; i++) {
      years.add(i.toString());
    }
    return years;
  }

  List giveMonths() {
    List<String> month = [];
    for (int i = 1; i < 13; i++) {
      if (i < 10) {
        month.add('0' + i.toString());
      } else {
        month.add(i.toString());
      }
    }
    return month;
  }

  List giveDate() {
    List<String> date = [];
    for (int i = 1; i < 32; i++) {
      if (i < 10) {
        date.add('0' + i.toString());
      } else {
        date.add(i.toString());
      }
    }
    return date;
  }

  DropdownButton<String> androidDropdownDate() {
    List<DropdownMenuItem<String>> dates = [];
    for (String date in giveDate()) {
      dates.add(
        DropdownMenuItem(
          child: Text(
            date,
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF263238),
            ),
          ),
          value: date,
        ),
      );
    }

    return DropdownButton<String>(
      isExpanded: true,
      dropdownColor: Colors.white,
      iconEnabledColor: Color(0xFF263238),
      value: selectedDate,
      items: dates,
      onChanged: (value) {
        setState(
          () {
            selectedDate = value.toString();
          },
        );
      },
    );
  }

  DropdownButton<String> androidDropdownMonth() {
    List<DropdownMenuItem<String>> months = [];
    for (String month in giveMonths()) {
      months.add(
        DropdownMenuItem(
          child: Text(
            month,
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF263238),
            ),
          ),
          value: month,
        ),
      );
    }

    return DropdownButton<String>(
      isExpanded: true,
      dropdownColor: Colors.white,
      iconEnabledColor: Color(0xFF263238),
      value: selectedMonth,
      items: months,
      onChanged: (value) {
        setState(
          () {
            selectedMonth = value.toString();
          },
        );
      },
    );
  }

  DropdownButton<String> androidDropdownYear() {
    List<DropdownMenuItem<String>> years = [];
    for (String year in giveYears()) {
      years.add(
        DropdownMenuItem(
          child: Text(
            year,
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF263238),
            ),
          ),
          value: year,
        ),
      );
    }

    return DropdownButton<String>(
      isExpanded: true,
      dropdownColor: Colors.white,
      iconEnabledColor: Color(0xFF263238),
      value: selectedYear,
      items: years,
      onChanged: (value) {
        setState(
          () {
            selectedYear = value.toString();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var credentials = Provider.of<Authenticate>(context, listen: false);
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
                            'Personal',
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF263238),
                            ),
                          ),
                          Text(
                            'Details    ',
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
                      image: AssetImage('assets/images/profile_image.gif'),
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
                        label: 'First Name',
                        isObscurred: false,
                        controller: firstName,
                        validation: 'first name',
                      ),
                      CustomInputField(
                        label: 'Last Name',
                        isObscurred: false,
                        controller: lastName,
                        validation: 'last name',
                      ),
                      CustomInputField(
                        label: 'Address',
                        isObscurred: false,
                        controller: address,
                        maxLines: 5,
                        validation: 'name',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gender',
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffff5a5f),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: androidDropdown(),
                                )),
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
                              'Date of Birth',
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color(0xffff5a5f),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: androidDropdownDate(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color(0xffff5a5f),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: androidDropdownMonth(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color(0xffff5a5f),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: androidDropdownYear(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      CustomInputField(
                        label: 'Linkedin Profile',
                        isObscurred: false,
                        controller: linkedin,
                        validation: 'Linkedin',
                      ),
                      CustomInputField(
                          label: 'Github Profile',
                          isObscurred: false,
                          controller: github,
                          validation: 'Github'),
                      CustomInputField(
                        label: 'Profile Link',
                        isObscurred: false,
                        controller: profile,
                        validation: 'Profile',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42.0,
                          vertical: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Map<String, String> personalDetail = {
                                'First Name': firstName.text.toString(),
                                'Last Name': lastName.text.toString(),
                                'Address': address.text.toString(),
                                'Gender': selectedGender.toString(),
                                'DOB': selectedDate +
                                    ' ' +
                                    selectedMonth +
                                    ' ' +
                                    selectedYear,
                                'Linkedin': linkedin.text.toString(),
                                'Github': github.text.toString(),
                                'Profile': profile.text.toString(),
                              };
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return EducationalDetail(
                                  personalDetailsMap: personalDetail,
                                );
                              }));
                              //print(credentials.userId);

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
                        height: 24,
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
