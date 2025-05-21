import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => FlutterFlowTheme();

  // Instance properties
  Color get primaryBackground => Colors.white;
  Color get secondaryBackground => Colors.grey[200]!;
  Color get primaryText => Colors.black;
  Color get secondaryText => Colors.grey;
  Color get error => Colors.red;
  Color get alternate => Colors.grey[400]!; // Added alternate color
  
  TextStyle get bodyMedium => GoogleFonts.inter(
    color: primaryText,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ).copyWith();
  
  TextStyle get labelMedium => GoogleFonts.inter(
    color: secondaryText,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ).copyWith();
  
  TextStyle get titleSmall => GoogleFonts.inter(
    color: primaryText,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ).copyWith();
}