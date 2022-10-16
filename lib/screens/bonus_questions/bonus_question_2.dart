import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryzeapp/utils/Utility.dart';
import 'package:ryzeapp/widgets/Bonus_question_attach_widget.dart';
import 'package:ryzeapp/widgets/Bounus_question_attach_upload.dart';

import 'bonus_question_conformation.dart';

class BonusQuestionTwo extends StatelessWidget {
  const BonusQuestionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.width;
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
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: Container(
                width: _width,
                color: Color(0xffFFF0F3),
                // color: Colors.blue,
                height: 80,
                child: Center(
                  child: Text(
                    "Bonus Questions",
                    style:
                        Utility().customColorHeadingTextStyle(Colors.black, 24),
                  ),
                ),
              ),
            ), //------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width * .85,
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
                        padding: const EdgeInsets.symmetric(vertical: 11),
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
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // constraints: BoxConstraints.expand(),

                decoration: BoxDecoration(
                    color: Color(0xffFFF0F3),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            width: _width * .85,
                            // color: Colors.cyan,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
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
                                                style: Utility()
                                                    .bonusHeadingTextStyle()),
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
                                ),

                                //time Container
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    // width: _width,
                                    // color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Container(
                                        width: 200,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 4,
                                              color: Color(0xffFF5A5F)),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                        child: Text('HH : MM : SS',
                                            style: Utility()
                                                .bonusHeadingTextStyle()),
                                      ),
                                    ),
                                  ),
                                ),

                                //discription container
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Container(
                                    // color: Colors.blueGrey,
                                    child: Column(
                                      children: [
                                        //upper text on top of Discription
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 16),
                                            child: Text(
                                              "Write Description",
                                              style: Utility()
                                                  .bonusHeadingTextStyle(),
                                              // textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),

                                        //textbox Discription
                                        TextFormField(
                                          maxLines: 6,
                                          decoration: InputDecoration(
                                            hintStyle: GoogleFonts.ptSans(
                                                textStyle:
                                                    TextStyle(fontSize: 14)),
                                            hintText:
                                                "Enter a brief description here",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                20, 40, 0, 0),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF5A5F),
                                                  width: 1),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              borderSide: BorderSide(
                                                  color: Color(0xffFF5A5F),
                                                  width: 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //upload attachment container
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        //text for attachment conatiner
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Upload Attachment",
                                                  style: Utility()
                                                      .bonusHeadingTextStyle())),
                                        ),

                                        //file upload section
                                        //you can upload files from here
                                        BonusQuestionAttachUploadWidget(
                                            docName:
                                                "Upload Required Document"),
                                      ],
                                    ),
                                  ),
                                ),

                                //submit container
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    // color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      BonusQuestionSubmission()));
                                        },
                                        child: Container(
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
                                            'Submit',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //---------------
          ],
        ),
      ),
    );
  }
}
