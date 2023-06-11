import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kSeedColor = Color.fromRGBO(231, 70, 70, 1.0);
const kMutedTextColor = Color.fromRGBO(140, 150, 154, 1);
const kTextColor = Color.fromRGBO(54, 57, 58, 1);

final lightTheme = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: kSeedColor,
  brightness: Brightness.light,
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(fontSize: 14),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      fontSize: 14,
      color: kMutedTextColor,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1.0,
        color: kSeedColor,
      ),
    ),
    contentPadding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
  ),
);

final darkTheme = ThemeData(
  colorSchemeSeed: kSeedColor,
  brightness: Brightness.dark,
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(fontSize: 14),
    ),
  ),
  useMaterial3: true,
);
