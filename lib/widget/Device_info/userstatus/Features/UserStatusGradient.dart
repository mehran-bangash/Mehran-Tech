import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGradient_card extends StatelessWidget {
  final String title;
  final String subTitle;
  final List<Color> clr;
  final Color titleColor;
  final Color subtitleColor;
  final bool isGradientVertical;

  const UserGradient_card(
      {super.key,
      required this.titleColor,
      required this.subtitleColor,
      required this.title,
      required this.subTitle,
      required this.clr,
      required this.isGradientVertical});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                gradient: LinearGradient(
                    begin: isGradientVertical
                        ? Alignment.topCenter
                        : Alignment.topRight,
                    end: isGradientVertical
                        ? Alignment.bottomCenter
                        : Alignment.topLeft,
                    colors: clr)),
            child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(0)),
                    elevation: MaterialStateProperty.all<double>(0)),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: titleColor),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      subTitle,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: subtitleColor),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
