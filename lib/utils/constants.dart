import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color iconColor = Color(0xFFFFFFFF);
const Color primaryColor = Color(0xFF410FA3);
const Color secondaryColor = Color(0xFF5B7BFE);

TextStyle fontStyle({
  double fontSize = 20,
  FontWeight fontWeight = FontWeight.normal,
  bool useDarkText = true,
  Color? customColor,
}) {
  return GoogleFonts.fredoka(
    color:
        customColor ??
        (useDarkText ? const Color(0xFF080E1E) : const Color(0xFFFFFFFF)),
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}
