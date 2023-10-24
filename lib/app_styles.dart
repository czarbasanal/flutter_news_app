import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color white = Color(0xffffffff);
const Color lightWhite = Color(0xffeff5f4);
const Color lighterWhite = Color(0xfffcfcfc);

const Color grey = Color(0xff9397a0);
const Color lightGrey = Color(0xffa7a7a7);

const Color blue = Color(0xff5474fd);
const Color lightBlue = Color(0xff83b1ff);
const Color lighterBlue = Color(0xffc1d4f9);

const Color darkBlue = Color(0xff19202d);

const double borderRadius = 16.0;
const double xsmall = 12.0;
const double small = 14.0;
const double medium = 16.0;
const double large = 18.0;
const double xlarge = 20.0;

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius),
  borderSide: BorderSide.none,
);

final poppinsBold = GoogleFonts.poppins(
  color: darkBlue,
  fontWeight: FontWeight.w700,
);

final poppinsSemibold = GoogleFonts.poppins(
  color: darkBlue,
  fontWeight: FontWeight.w600,
);

final poppinsMedium = GoogleFonts.poppins(
  color: darkBlue,
  fontWeight: FontWeight.w500,
);

final poppinsRegular = GoogleFonts.poppins(
  color: darkBlue,
  fontWeight: FontWeight.w400,
);
