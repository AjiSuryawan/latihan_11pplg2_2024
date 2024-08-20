import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool isObsecure;
  final TextStyle textStyle;
  final TextEditingController controller;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.isObsecure,
      required this.textStyle,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        obscureText: isObsecure,
        style: textStyle,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
