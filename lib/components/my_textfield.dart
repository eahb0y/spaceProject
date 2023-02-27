import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 25.0, vertical: 3.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white70, width: 3),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white70, width: 3),
          ),
        ),
      ),
    );
  }
}
