import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle appBarTitle = TextStyle(
    fontFamily: 'Sigmar_One',
    fontWeight: FontWeight.w400,
    color: AppColors.titleTextColor,
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
