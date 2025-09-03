import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color iconColor = const Color(0xFFFFFFFF);
const Color primaryColor = const Color(0xFF410FA3);
const Color secondaryColor = const Color(0xFF5B7BFE);

TextStyle fontStyle({
  double fontSize = 20,
  FontWeight fontWeight = FontWeight.normal,
  bool useDarkText = true,
}) {
  return GoogleFonts.fredoka(
    color: useDarkText ? const Color(0xFF080E1E) : const Color(0xFFFFFFFF),
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}
