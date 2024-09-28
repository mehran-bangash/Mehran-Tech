import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/Device_info/BatteryInfo/BatteryFeatures/Twovaluecard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class detailDevice_info extends StatelessWidget {
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
          icon: const Icon(
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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.topCenter,
                colors: [Color(0xFF02a9Af), Color(0xFF00CDAC)])),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Information",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
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
                            flex: 6,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Total Ram", value: "5.37 GB"),
                            )),
                        Expanded(
                            flex: 6,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Refresh Rate", value: "60 Hz"),
                            )),
                        Expanded(
                            flex: 10,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Fingerprint Sensor", value: "Present"),
                            )),
                        Expanded(
                            flex: 10,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Fingerprint Sensor", value: "Yes"),
                            ))
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 10,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Internal Memeory",
                                  value: "56.89/110.9 GB"),
                            )),
                        Expanded(
                            flex: 10,
                            child: Container(
                              child: Twovaluecard(
                                  text: "External Memory", value: "N/A"),
                            )),
                        Expanded(
                            flex: 6,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Screen Size", value: "6.06 inches"),
                            )),
                        Expanded(
                            flex: 6,
                            child: Container(
                              child: Twovaluecard(
                                  text: "Resolution", value: "2134x1080"),
                            ))
                      ],
                    ),
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
