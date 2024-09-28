import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TwovalueCardLoction extends StatelessWidget {
  final IconData icon;
  final String text1;

  final Color? clr;
  final Color? iconClr;
  final Color? text1Clr;

  const TwovalueCardLoction(
      {super.key,
      required this.icon,
      required this.text1,
      this.clr,
      this.text1Clr,
      this.iconClr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
        child: Card(
          elevation: 8,
          color: clr ?? Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: Icon(
                  icon,
                  size: 35,
                  color: iconClr ?? Colors.red,
                )),
                Flexible(
                  child: Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      text1,
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: text1Clr ?? Color(0xff8e57fb)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
