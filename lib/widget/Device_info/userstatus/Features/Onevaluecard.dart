import 'package:flutter/material.dart';

class myvalueCard extends StatelessWidget {
  final String value;
  final Color clr;
  final Color? textClr;
  myvalueCard({this.textClr, required this.value, required this.clr});

  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      child: Card(
        color: clr,
        elevation: 20,
        child: Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              value,
              style: TextStyle(
                  fontSize: 15,
                  color: textClr ?? Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Nunito"),
            ),
          ),
        ),
      ),
    );
  }
}
