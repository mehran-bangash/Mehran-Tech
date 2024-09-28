import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool obscueText;
  final TextInputType keybordtype;
  final IconData icon;
  final String labelText;
  final double fontsize;
  final TextEditingController controller;

  MyTextField(
      {required this.obscueText,
      required this.keybordtype,
      required this.icon,
      required this.labelText,
      required this.fontsize,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscueText,
      autofocus: false,
      keyboardType: keybordtype,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          fillColor: Color(0xffE7E7F2),
          filled: true,
          prefixIcon: Icon(
            icon,
            size: 18,
          ),
          prefixIconColor: Color(0xff00205c),
          label: Text(
            labelText,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: fontsize),
          ),
          labelStyle: TextStyle(fontSize: 14, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none,
          )),
    );
  }
}
