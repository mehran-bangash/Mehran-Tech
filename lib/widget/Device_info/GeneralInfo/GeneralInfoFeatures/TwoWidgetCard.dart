import 'package:flutter/material.dart';

class TwoWidgetcard extends StatelessWidget {
  final String text1;
  final String value1;
  final Widget? subwidget1;
  final Color? clr1;
  final Color? textclr1;

  final String text2;
  final String value2;
  final Widget? subwidget2;
  final Color? clr2;
  final Color? textclr2;

  TwoWidgetcard(
      {required this.text1,
      required this.value1,
      this.subwidget1,
      this.clr1,
      this.textclr1,
      required this.text2,
      required this.value2,
      this.subwidget2,
      this.clr2,
      this.textclr2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr1 ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    text1,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  subwidget1 ??
                      Text(
                        textAlign: TextAlign.center,
                        value1,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textclr1 ?? Color(0xfff47A7D)),
                      )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    text2,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  subwidget2 ??
                      Text(
                        textAlign: TextAlign.center,
                        value2,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textclr2 ?? Color(0xfff47A7D)),
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
