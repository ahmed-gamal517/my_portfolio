import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

abstract class AppTextStyles {
  // Headings
  static const TextStyle displayLarge = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 48,
    letterSpacing: -1.0,
    height: 1.15,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 36,
    letterSpacing: -0.5,
    height: 1.2,
  );

  static const TextStyle headingLarge = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 28,
    letterSpacing: -0.3,
  );

  static const TextStyle headingMedium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );

  static const TextStyle headingSmall = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  // Body
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.6,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.4,
  );

  // Labels & Chips
  static const TextStyle labelLarge = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    letterSpacing: 0.2,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 11,
    letterSpacing: 0.5,
  );

  // Legacy mappings for backwards-compatibility
  static const TextStyle appBarTitle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.cyan,
  );

  static const TextStyle personalName = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static const TextStyle personalTitle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  static const TextStyle sigmarBold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  static const TextStyle poppinsMedium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle poppinsBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );

  static const TextStyle poppinsRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle poppinsSemiBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle firaSansRegular = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle firaSansSemiBold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle firaSansMedium = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle firaSansBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );
}
