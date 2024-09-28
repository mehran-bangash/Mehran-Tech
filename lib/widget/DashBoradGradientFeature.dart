import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardFeature extends StatelessWidget {
  final String btntext;
  final String iconimage;
  final List<Color> clr;
  final FontWeight? weight;

  DashboardFeature(
      {required this.btntext,
      required this.iconimage,
      required this.clr,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                spreadRadius: 0.5,
                blurRadius: 3.0,
              )
            ],
            gradient: LinearGradient(colors: clr)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 35,
                  width: 35,
                  child: Image.asset(
                    iconimage,
                    filterQuality: FilterQuality.high,
                  )),
              Flexible(
                  child: Text(
                btntext,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: weight ?? FontWeight.w600,
                    color: Colors.black),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
