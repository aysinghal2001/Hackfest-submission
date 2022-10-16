import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BonusQuestionAttachWidget extends StatelessWidget {
  final String docName;
  BonusQuestionAttachWidget({required this.docName});
  // const BonusQuestionAttachWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
          // width: MediaQuery.of(context).size.width * 0.8,
          height: 42,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffFF5A5F)),
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: Padding(
                  //innercontainer
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    child: Transform.rotate(
                      angle: 45,
                      child: Icon(Icons.attach_file),
                    ),
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            // style: ,
                            width: 2,
                            color: Color(0xffFF5A5F))),
                  ),
                ),
              ), //
              //second document
              Align(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    child: Text(docName,
                        style: GoogleFonts.ptSans(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
