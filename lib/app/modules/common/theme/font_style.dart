import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  static final largeText = GoogleFonts.inter(fontSize: 16.sp);
  static final smallText = GoogleFonts.inter(fontSize: 12.sp);
  static final mediumText =
      GoogleFonts.inter(fontSize: 14.sp, color: Colors.white);
  static final mediumTextBlack =
      GoogleFonts.inter(fontSize: 14.sp, color: Colors.black);
  static final hardText =
      GoogleFonts.inter(fontSize: 14.sp, color: Colors.black);
  static final caption = GoogleFonts.inter(fontSize: 10.sp);
  static final boldLargeText =
      GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.bold);
  static final boldMediumText =
      GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold);
  static final boldSmallText =
      GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.bold);
  static final headline6 =
      GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold);
  static final headline4 =
      GoogleFonts.inter(fontSize: 32.sp, fontWeight: FontWeight.bold);
  static final headline5 = GoogleFonts.inter(
      fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.white);
}
