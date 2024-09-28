import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/CardDetail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class myprofile extends StatefulWidget {
  @override
  State<myprofile> createState() => _myprofileState();
}

bool more = false;

class _myprofileState extends State<myprofile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "My Profile",
                style: GoogleFonts.nunito(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              )
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: CircularProfileAvatar(
              "",
              borderColor: Colors.grey,
              borderWidth: 1,
              backgroundColor: Colors.blue,
              cacheImage: true,
              elevation: 10,
              radius: 70,
              errorWidget: (context, url, error) {
                return Icon(Icons.face);
              },
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Mehran Ali",
                  style: GoogleFonts.nunito(
                      fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Mehran@12",
                  style: GoogleFonts.nunito(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 209, 59, 197)),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150),
                      side: BorderSide(
                          width: 1, color: Color.fromARGB(255, 209, 59, 197)),
                    ))),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  carddetail(
                    cardText: 'Email',
                    Cardicon: Icons.alternate_email,
                    cardclr: Colors.grey.shade200,
                    val: "Mehran46@gmail.com",
                  ),
                  carddetail(
                    cardText: 'Country',
                    Cardicon: Icons.outlined_flag,
                    cardclr: Colors.transparent,
                    val: "Pakistan",
                  ),
                  carddetail(
                    cardText: 'phone',
                    Cardicon: Icons.phone,
                    cardclr: Colors.grey.shade200,
                    val: "Not currently set",
                  ),
                  more
                      ? carddetail(
                          cardText: 'Gender',
                          Cardicon: FontAwesomeIcons.venusMars,
                          cardclr: Colors.transparent,
                          val: "Male",
                        )
                      : Container(),
                  more
                      ? carddetail(
                          cardText: 'Partner',
                          Cardicon: Icons.person_outlined,
                          cardclr: Colors.grey.shade200,
                          val: "MehranTech",
                        )
                      : Container(),
                  more
                      ? carddetail(
                          cardText: 'UID',
                          Cardicon: FontAwesomeIcons.fingerprint,
                          cardclr: Colors.transparent,
                          val: "Mwpdkjksu45667dhbbjhjhjhjhj",
                        )
                      : Container(),
                  more
                      ? carddetail(
                          cardText: 'Account',
                          Cardicon: Icons.schedule,
                          cardclr: Colors.transparent,
                          val: "3/4/2024",
                        )
                      : Container(),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        more = !more;
                      });
                    },
                    child: Text(
                      more ? "- show less" : "+ show more",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade200),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(150),
                          side: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 209, 59, 197)),
                        ))),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff5e62), Color(0xffff5e62)]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Subscribe to",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "Premium",
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Subscribe on",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "N/A",
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
