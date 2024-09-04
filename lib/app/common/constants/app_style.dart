import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

TextStyle appMStyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.poppins(fontSize: size.sp, color: color, fontWeight: fw);
}

TextStyle appBStyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.inter(fontSize: size.sp, color: color, fontWeight: fw);
}

class AppTextStyle {
  static final AppTextStyle _instance = AppTextStyle._();

  factory AppTextStyle() => _instance;
  AppTextStyle._();

  static TextStyle titleSmall = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleMedium = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  );
  static TextStyle titleLarge = GoogleFonts.poppins(
    fontSize: 23.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

  static TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );
}
