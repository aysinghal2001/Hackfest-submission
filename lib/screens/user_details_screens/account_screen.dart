import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ryzeapp/utils/auth.dart';
import 'package:ryzeapp/widgets/custom_input.dart';

class AccountDetailScreen extends StatefulWidget {
  final Map personalDetailsMap;
  final Map educationalDetailsMap;
  AccountDetailScreen(
      {required this.personalDetailsMap, required this.educationalDetailsMap});
  @override
  _AccountDetailScreenState createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var accountNumber = TextEditingController();
  var ifscCode = TextEditingController();
  var bankName = TextEditingController();
  var upiId = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var database = Provider.of<Authenticate>(context);
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
                            'Account',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF263238),
                            ),
                          ),
                          Text(
                            'Details    ',
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
                        label: 'Account Number',
                        isObscurred: false,
                        controller: accountNumber,
                        validation: 'Account number',
                      ),
                      CustomInputField(
                        label: 'IFSC Code',
                        isObscurred: false,
                        controller: ifscCode,
                        validation: 'IFSC code',
                      ),
                      CustomInputField(
                        label: 'Bank Name',
                        isObscurred: false,
                        controller: bankName,
                        validation: 'Bank Name',
                      ),
                      CustomInputField(
                        label: 'UPI ID',
                        isObscurred: false,
                        controller: upiId,
                        validation: 'UPI ID',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42.0,
                          vertical: 10,
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              Map accountDetails = {
                                'Account Number': accountNumber.text.toString(),
                                'IFSC Code': ifscCode.text.toString(),
                                'Bank Name': bankName.text.toString(),
                                'UPI ID': upiId.text.toString()
                              };
                              Map finalData = {
                                'Personal Details': widget.personalDetailsMap,
                                'Education Details':
                                    widget.educationalDetailsMap,
                                'Account Details': accountDetails
                              };
                              print(finalData);
                              setState(() {
                                isLoading = true;
                              });
                              await database.addDetails(finalData);
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
                                    'Save',
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
