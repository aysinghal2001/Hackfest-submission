import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMobileNumber extends StatefulWidget {
  final String label;
  final bool isObscurred;
  CustomMobileNumber({
    required this.label,
    required this.isObscurred,
  });
  @override
  _CustomMobileNumberState createState() => _CustomMobileNumberState();
}

class _CustomMobileNumberState extends State<CustomMobileNumber> {
  String selectedCountryCode = '+91';
  final List<String> countryCodeList = [
    '+91',
    '+11',
    '+21',
    '+31',
    '+41',
    '+51',
    '+61',
    '+71',
    '+81',
    '+01'
  ];
  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> codes = [];
    for (String code in countryCodeList) {
      codes.add(
        DropdownMenuItem(
          child: Text(
            code,
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          value: code,
        ),
      );
    }

    return DropdownButton<String>(
      dropdownColor: Colors.red,
      iconEnabledColor: Colors.white,
      value: selectedCountryCode,
      items: codes,
      onChanged: (value) {
        setState(
          () {
            selectedCountryCode = value.toString();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 42,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 68,
                  height: 51,
                  decoration: BoxDecoration(
                      color: Color(0xffff5a5f),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                  child: androidDropdown()),
              Expanded(
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  obscureText: widget.isObscurred,
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  onChanged: (inputEmail) {},
                  decoration: InputDecoration(
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffff5a5f),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffff5a5f),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 20,
                    ),
                    fillColor: Colors.white,
                    filled: true,
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
    );
    ;
  }
}
