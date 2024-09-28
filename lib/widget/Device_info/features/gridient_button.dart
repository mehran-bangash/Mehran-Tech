import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gradient_button extends StatelessWidget {
  final String title;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientvertical;

  gradient_button(
      {required this.title,
      required this.clr,
      required this.overlayColor,
      required this.isGradientvertical});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: isGradientvertical
                        ? Alignment.topCenter
                        : Alignment.topLeft,
                    end: isGradientvertical
                        ? Alignment.bottomCenter
                        : Alignment.bottomRight,
                    colors: clr),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  overlayColor: //when we click on button
                      MaterialStateProperty.all<Color>(overlayColor),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(0)),
                  elevation: MaterialStateProperty.all<double>(0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
