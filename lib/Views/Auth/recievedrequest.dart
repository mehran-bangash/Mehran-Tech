import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Views/Auth/AcceptFriend.dart';

import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class recieved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MehranTech",
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 118, 182, 235)),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const FindFriend(),
                      type: PageTransitionType.fade));
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "See Recieved Invitations",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              width: 500,
              height: 410,
              child: Image.asset(
                "assets/recieved.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You received invitations are currently",
                  style: GoogleFonts.nunito(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 18, 221, 25)),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Empty",
                  style: GoogleFonts.nunito(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
