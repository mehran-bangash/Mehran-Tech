import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/Device_info/features/Toperheading.dart';
import 'package:mehrantech/widget/Device_info/features/gridient_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class device_info extends StatelessWidget {
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
      body: Column(
        children: [
          Topperheading(
            title: "Device Info",
            clr: [
              const Color(0xff4fc174),
              const Color(0xff4fc174),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 10,
                            child: gradient_button(
                              title: "User status",
                              clr: [Color(0xff86AAE8), Color(0xff92E9E3)],
                              overlayColor: Colors.cyan,
                              isGradientvertical: true,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: gradient_button(
                              title: "Battery",
                              clr: [Color(0xFFFAD585), Color(0xFFF47A7D)],
                              overlayColor: Colors.orangeAccent,
                              isGradientvertical: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: gradient_button(
                      title: "General",
                      clr: [Color(0xFFF50C9C2), Color(0xFF95DEDA)],
                      overlayColor: Colors.teal.shade300,
                      isGradientvertical: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: gradient_button(
                        title: "Device specs",
                        clr: [Color(0xFF02a9af), Color(0xFF00cdac)],
                        overlayColor: Color(0xff01bCAA),
                        isGradientvertical: true,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: gradient_button(
                                title: "Location",
                                clr: [Color(0xff8893d6), Color(0xff8ca5db)],
                                overlayColor: Color(0xffb159c6),
                                isGradientvertical: false,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: gradient_button(
                                title: "Orinetation",
                                clr: [Color(0xFFFAD585), Color(0xFFF47A7D)],
                                overlayColor: Color(0xffF98583),
                                isGradientvertical: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
