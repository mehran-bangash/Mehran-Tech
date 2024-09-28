import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Topperheading extends StatelessWidget {
  final String title;
  final List<Color> clr;

  Topperheading({required this.title, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors: clr)),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
