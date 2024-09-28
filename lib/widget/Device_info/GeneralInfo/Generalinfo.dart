import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/Device_info/BatteryInfo/BatteryFeatures/Twovaluecard.dart';
import 'package:mehrantech/widget/Device_info/GeneralInfo/GeneralInfoFeatures/TwoWidgetCard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class generalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "MehranTech",
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 118, 182, 235)),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff509c92), Color(0xff95DEDA)]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "General status",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            child: Twovaluecard(
                          text: "Scereen State",
                          value: "UNILOCKED",
                          textclr: Color(0xff55cac4),
                        )),
                        Expanded(
                            flex: 2,
                            child: TwoWidgetcard(
                              text1: "System volume",
                              value1: "0/7",
                              textclr1: Color(0xff55cac4),
                              text2: "Media Volume",
                              value2: "4/7",
                              textclr2: Color(0xff55cac4),
                            ))
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: TwoWidgetcard(
                              text1: "Light activity",
                              value1: "Daim light",
                              textclr1: Color(0xff55cac4),
                              text2: "Light intensity",
                              value2: "4",
                              textclr2: Color(0xff55cac4),
                            )),
                        Expanded(
                            child: Twovaluecard(
                          text: "Brightness",
                          value: "3.4%",
                          textclr: Color(0xff55cac4),
                        )),
                      ],
                    ),
                  ))
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        " My General info",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff989898)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Twovaluecard(
                                text: "Scereen State",
                                value: "UNILOCKED",
                                textclr: Colors.white,
                                clr: Color(0xff509c92),
                              )),
                              Expanded(
                                  flex: 2,
                                  child: TwoWidgetcard(
                                    text1: "System volume",
                                    value1: "0/7",
                                    textclr1: Colors.white,
                                    text2: "Media Volume",
                                    value2: "4/7",
                                    clr1: Color(0xff509c92),
                                    textclr2: Colors.white,
                                  ))
                            ],
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: TwoWidgetcard(
                                    text1: "Light activity",
                                    value1: "Daim light",
                                    textclr1: Colors.white,
                                    text2: "Light intensity",
                                    value2: "4",
                                    textclr2: Colors.white,
                                    clr1: Color(0xff509c92),
                                  )),
                              Expanded(
                                  child: Twovaluecard(
                                text: "Brightness",
                                clr: Color(0xff509c92),
                                value: "3.4%",
                                textclr: Colors.white,
                              )),
                            ],
                          ),
                        ))
                      ],
                    ),
                  )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
