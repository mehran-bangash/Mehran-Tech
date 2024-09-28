import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MystatusContainer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 150,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink,
            ),
          )),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Container(
            height: 150,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          )),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Container(
            height: 150,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
          )),
        ],
      ),
    );
  }
}
