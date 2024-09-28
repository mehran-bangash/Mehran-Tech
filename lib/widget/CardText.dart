import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CardText extends StatelessWidget {
  final String CardtextFirst;
  final String CardtextSec;

  CardText({required this.CardtextFirst, required this.CardtextSec});

  @override
  Widget build(BuildContext) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Text(
                CardtextFirst,
                style: GoogleFonts.nunito(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                CardtextSec,
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
