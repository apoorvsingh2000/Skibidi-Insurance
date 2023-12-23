import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/models/ICardItem.dart';

Color kCardColor = const Color.fromARGB(255, 201, 243, 237);
Color kDarkColor = const Color.fromARGB(255, 27, 95, 86);
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
    "Fitness and Wellness Program",
    "Price: \t 200.00 USD",
    "Category: \t weight",
    "Duration: \t 2 years",
    "Encourages a healthy lifestyle with fitness guidance.",
    "images/fitness.png");
