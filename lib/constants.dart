import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/models/ICardItem.dart';

var kCardColor = const Color.fromARGB(255, 201, 243, 237);
var kDarkColor = const Color.fromARGB(255, 27, 95, 86);
// 00BFA6

TextStyle textStyle() {
  return TextStyle(
    color: Colors.black,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
}

ICardItem kCardItem() => ICardItem(
    "Super duper Health Insurance",
    "1862.05",
    "7",
    "5",
    "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
    "images/logo.png");
