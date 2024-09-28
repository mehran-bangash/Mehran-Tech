import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MylistTile extends StatelessWidget {
  final String title;
  final IconData icons;

  const MylistTile({super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 40,
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              icons,
              color: Color(0xff00D7CC),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
