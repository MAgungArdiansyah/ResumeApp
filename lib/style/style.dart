import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme lightTheme = TextTheme(
    displayLarge: GoogleFonts.robotoSlab(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.w400,
        letterSpacing: -1.5),
    displayMedium: GoogleFonts.robotoSlab(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.w500,
        letterSpacing: -1.5),
    displaySmall: GoogleFonts.sono(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: -1.5),
    labelSmall: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: GoogleFonts.robotoSlab(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
    bodyMedium: GoogleFonts.robotoSlab(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
    bodySmall: GoogleFonts.robotoSlab(
        color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500));
