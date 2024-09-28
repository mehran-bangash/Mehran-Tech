import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class carddetail extends StatelessWidget {
  final String cardText;
  final IconData Cardicon;
  final Color cardclr;
  final String val;

  carddetail(
      {required this.cardText,
      required this.Cardicon,
      required this.cardclr,
      required this.val});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: cardclr,
            border: Border.all(color: Color.fromARGB(255, 245, 242, 242))),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Icon(
              Cardicon,
              size: 17,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              cardText,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: val == "Currently Not set"
                            ? Colors.red
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
