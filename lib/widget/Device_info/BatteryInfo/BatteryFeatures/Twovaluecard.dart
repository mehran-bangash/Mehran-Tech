import 'package:flutter/material.dart';

class Twovaluecard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subwidget;
  final Color? clr;
  final Color? textclr;

  Twovaluecard(
      {required this.text,
      required this.value,
      this.subwidget,
      this.clr,
      this.textclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 1,
            ),
            subwidget ??
                Text(
                  textAlign: TextAlign.center,
                  value,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: textclr ?? Color(0xfff47A7D)),
                )
          ],
        ),
      ),
    );
  }
}
