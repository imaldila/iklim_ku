import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final searchDecoration = InputDecoration(
  filled: true,
  fillColor: const Color(0xFFC4C4C4).withOpacity(0.18),
  contentPadding: const EdgeInsets.symmetric(vertical: 24),
  hintText: 'Search City Name',
  hintStyle: GoogleFonts.inter(
    fontSize: 16,
  ),
  border: const OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
  ),
);

final kTitleDesc = GoogleFonts.inter(
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

final kWeatherStats = GoogleFonts.inter(
  fontSize: 16,
);

final kCityName = GoogleFonts.inter(
  fontSize: 32,
  fontWeight: FontWeight.w200,
);

final kTemp = GoogleFonts.inter(
  fontSize: 44,
  fontWeight: FontWeight.bold,
);
