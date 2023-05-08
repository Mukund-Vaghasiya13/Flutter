import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemsToBeused {
  static Color canvascolor = Color.fromARGB(255, 254, 255, 241);
  static Color DarkcanvasColor = Colors.grey.shade700;
  static Color CardColor = Colors.white;
  static Color DatkCardColor = Colors.black;

  static ThemeData lightthem(BuildContext context) {
    return ThemeData(
        canvasColor: canvascolor,
        cardColor: CardColor,
        textTheme: TextTheme(
          labelLarge:GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),
          ), 
          titleLarge: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
          titleSmall: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      
      );
  }

  static ThemeData darkthem(BuildContext context) {
    return ThemeData(
      canvasColor: DarkcanvasColor,
      cardColor: DatkCardColor,
      textTheme: TextTheme(
          labelLarge:GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),
          ), 
          titleLarge: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSmall: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
    );
  }
}
