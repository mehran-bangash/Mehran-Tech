import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";
import "package:mehrantech/widget/Device_info/BatteryInfo/BatteryFeatures/Twovaluecard.dart";
import "package:responsive_sizer/responsive_sizer.dart";
import "package:sleek_circular_slider/sleek_circular_slider.dart";

class BatteryInfo extends StatelessWidget {
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
                LinearGradient(colors: [Color(0xfffAd585), Color(0xfff47A7D)])),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Battery Status",
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
                            text: "Status",
                            value: "Discharge",
                          ),
                        ),
                        Expanded(
                          child: Twovaluecard(text: "Charging", value: "-"),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Twovaluecard(
                            text: "Charging Percentage",
                            value: "N/A",
                            subwidget: SleekCircularSlider(
                              min: 0,
                              max: 100,
                              appearance: CircularSliderAppearance(
                                customColors: CustomSliderColors(
                                    progressBarColor: const Color(0xfff57d7c)),
                                infoProperties: InfoProperties(
                                    mainLabelStyle: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w400,
                                )),
                                size: 60,
                                customWidths: CustomSliderWidths(
                                  progressBarWidth: 6,
                                ),
                              ),
                              initialValue: 50,
                            ),
                          ),
                        ),
                        Expanded(
                          child:
                              Twovaluecard(text: "Temperature", value: "35.0"),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            child: Twovaluecard(
                                text: "Battery Health", value: "Good")),
                        Expanded(
                            child: Twovaluecard(
                                text: "Battery \nTechnology", value: "LI-poly"))
                      ],
                    ),
                  ))
                ],
              ),
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
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
                        " My Battery Status",
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
                                  text: "Status",
                                  value: "Discharge",
                                  textclr: Colors.white,
                                  clr: Color(0xfff47A7D),
                                ),
                              ),
                              Expanded(
                                child: Twovaluecard(
                                  text: "Charging",
                                  value: "-",
                                  textclr: Colors.white,
                                  clr: Color(0xfff47A7D),
                                ),
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Twovaluecard(
                                  text: "Charging Percentage",
                                  value: "N/A",
                                  textclr: Colors.white,
                                  clr: Color(0xfff47A7D),
                                  subwidget: SleekCircularSlider(
                                    min: 0,
                                    max: 100,
                                    appearance: CircularSliderAppearance(
                                      customColors: CustomSliderColors(
                                          progressBarColor: Colors.white),
                                      infoProperties: InfoProperties(
                                          mainLabelStyle: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                      )),
                                      size: 60,
                                      customWidths: CustomSliderWidths(
                                        progressBarWidth: 6,
                                      ),
                                    ),
                                    initialValue: 50,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Twovaluecard(
                                  text: "Temperature",
                                  value: "35.0",
                                  textclr: Colors.white,
                                  clr: Color(0xfff47A7D),
                                ),
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Twovaluecard(
                                text: "Battery Health",
                                value: "Good",
                                textclr: Colors.white,
                                clr: Color(0xfff47A7D),
                              )),
                              Expanded(
                                  child: Twovaluecard(
                                      text: "Battery \nTechnology",
                                      textclr: Colors.white,
                                      clr: Color(0xfff47A7D),
                                      value: "LI-poly"))
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
