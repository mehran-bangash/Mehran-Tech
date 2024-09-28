import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/CardText.dart';
import 'package:mehrantech/widget/DashBoradGradientFeature.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Dashboard",
              style: GoogleFonts.nunito(
                  fontSize: 22.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            )
          ]),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              child: Text(
                "Your Friend",
                style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Card(
                elevation: 16,
                color: Colors.white,
                shadowColor: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Icon(
                                        Icons.fiber_manual_record,
                                        color: Colors.black12,
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Mehran ALi",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Icon(
                                      FontAwesomeIcons.locationDot,
                                      color: Colors.blue,
                                      size: 25,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Flexible(
                                    child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Street 81 FECHS E11/2 E-11,islamabad Pakistan",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardText(
                          CardtextFirst: "Status",
                          CardtextSec: "Offline",
                        ),
                        SizedBox(
                            height: 30,
                            width: 3,
                            child: Container(
                              color: Colors.black38,
                            )),
                        CardText(
                          CardtextFirst: "User Status",
                          CardtextSec: "N/A",
                        ),
                        SizedBox(
                            height: 30,
                            width: 3,
                            child: Container(
                              color: Colors.black38,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "User Status",
                          style: GoogleFonts.nunito(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Flexible(
                  child: DashboardFeature(
                weight: FontWeight.w600,
                btntext: "Device Info",
                clr: [
                  Color(0xff4FC174),
                  Color(0xff4FC174),
                ],
                iconimage: 'assets/Icons.webp',
              )),
              Flexible(
                  child: DashboardFeature(
                weight: FontWeight.w600,
                btntext: "Gallary",
                clr: [Color(0xfff7A100), Color(0xfff7A100)],
                iconimage: "assets/Gallery.webp",
              )),
              Flexible(
                  child: DashboardFeature(
                weight: FontWeight.w600,
                btntext: "Mood",
                clr: [Color(0xffC701D6), Color(0xffC701D6)],
                iconimage: "assets/Smile.webp",
              )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                " Our Features",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff004c99)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Playlist",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/Playist.png",
                )),
                SizedBox(
                  width: 25,
                ),
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Location",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/Location.webp",
                )),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "To do List",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/To_do_List.png",
                )),
                SizedBox(
                  width: 25,
                ),
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Diary",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/Diary.webp",
                )),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Suprise Notes",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/SupriseNotes.jpg",
                )),
                SizedBox(
                  width: 25,
                ),
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Horoscopes",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/HoroScopes.png",
                )),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Emergency",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/Emwegency.webp",
                )),
                SizedBox(
                  width: 25,
                ),
                Flexible(
                    child: DashboardFeature(
                  weight: FontWeight.w900,
                  btntext: "Activity",
                  clr: [Colors.white, Colors.white],
                  iconimage: "assets/Activity.webp",
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
