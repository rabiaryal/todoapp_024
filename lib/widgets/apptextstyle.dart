import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Label Text (e.g., headings or small titles)
  static final TextStyle labelText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  // Regular Text (e.g., body text)
  static final TextStyle regularText = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  // Input Text (e.g., user-entered data in TextFields)
  static final TextStyle inputText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  // Hint Text (e.g., placeholder text in input fields)
  static final TextStyle hintText = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  // Button Text
  static final TextStyle buttonText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // AppBar Title Text
  static final TextStyle appBarTitle = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
