import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/Device_info/LocationInfo/Locationfeatures.dart';
import 'package:mehrantech/widget/Device_info/userstatus/Features/Onevaluecard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff8893D6), Color(0xff8ca5db)])),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Location Status",
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
                child: Column(
                  children: [
                    Expanded(
                        flex: 10,
                        child: Expanded(
                          child: Container(
                            child: const TwovalueCardLoction(
                              icon: Icons.pin_drop,
                              text1:
                                  "Feches ,Street 81 E/11-2 \nIslamabad Pakistan",
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        flex: 4,
                        child: myvalueCard(
                          value: "Islamabd Pakistan",
                          clr: Colors.white,
                          textClr: Color(0xff8e57fb),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Last updated:",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "1 min ago",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Location status",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff989898)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      flex: 10,
                      child: Expanded(
                        child: Container(
                          child: const TwovalueCardLoction(
                            icon: Icons.pin_drop,
                            iconClr: Colors.white,
                            clr: Color(0xFF8e57fb),
                            text1Clr: Colors.white,
                            text1:
                                "Feches ,Street 81 E/11-2 \nIslamabad Pakistan",
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      flex: 4,
                      child: myvalueCard(
                        value: "Islamabd Pakistan",
                        clr: Color(0xFF8e57fb),
                        textClr: Colors.white,
                      ))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
