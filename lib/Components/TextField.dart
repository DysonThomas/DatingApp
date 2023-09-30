import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTExtFields extends StatelessWidget {
  final controller;
  final String hintText;
  final obscureText;
  const MyTExtFields(
    this.controller,
    this.hintText,
    this.obscureText,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          style: GoogleFonts.heebo(color: Colors.white),
          decoration: InputDecoration(
              hintStyle: GoogleFonts.heebo(color: Colors.white),
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1)))),
    );
  }
}
