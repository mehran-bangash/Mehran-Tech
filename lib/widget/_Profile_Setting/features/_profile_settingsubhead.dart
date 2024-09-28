import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class profile_subhead extends StatelessWidget {
  final String subText;
  final Widget? secendarywidget;

  profile_subhead({required this.subText, this.secendarywidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subText,
              style: GoogleFonts.nunito(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Container(
              child: secendarywidget ??
                  Icon(
                    FontAwesomeIcons.arrowRight,
                    size: 15,
                    color: Colors.black,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
