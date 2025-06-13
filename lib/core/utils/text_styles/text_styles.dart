import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle appBarTitle = const TextStyle(
    fontFamily: 'Sigmar_One',
    fontWeight: FontWeight.w400,
    color: AppColors.titleTextColor,
  );
  static TextStyle personalName = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle personalTitle = const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle sigmarBold = const TextStyle(
    fontFamily: 'Sigmar_One',
    fontWeight: FontWeight.w700,
    color: AppColors.btnTextColor,
  );
  static TextStyle poppinsMedium = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle poppinsBold = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle poppinsRegular = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle poppinsSemiBold = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle firaSansRegular = const TextStyle(
    fontFamily: 'Fira_Sans',
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle firaSansSemiBold = const TextStyle(
    fontFamily: 'Fira_Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle firaSansMedium = const TextStyle(
    fontFamily: 'Fira_Sans',
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle firaSansBold = const TextStyle(
    fontFamily: 'Fira_Sans',
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // static double getResponsiveFontSize(BuildContext context, double fontSize) {
  //   double scaleFactor = getScaleFactor(context);
  //   double responsiveFontSize = fontSize * scaleFactor;
  //   double lowerLimit = fontSize * 0.8;
  //   double upperLimit = fontSize * 1.2;

  //   return responsiveFontSize.clamp(lowerLimit, upperLimit);
  // }

  // static double getScaleFactor(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   if (width < SizeConfig.tablet) {
  //     return width / 550;
  //   } else if (width < SizeConfig.desktop) {
  //     return width / 1000;
  //   } else {
  //     return width / 1920;
  //   }
  // }
}
