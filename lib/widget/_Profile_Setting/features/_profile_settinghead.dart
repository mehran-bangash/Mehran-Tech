import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile_settingshead extends StatelessWidget {
  final String headText;
  profile_settingshead({required this.headText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            child: Text(
              headText,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
