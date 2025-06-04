import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/utils/text_styles/text_styles.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    textTheme: TextTheme(
      titleLarge: AppTextStyles.appBarTitle, //Website Name
      labelLarge: AppTextStyles.personalName, //Personal Name
      labelMedium: AppTextStyles.personalTitle, //Personal Title and info
      headlineMedium: AppTextStyles.sigmarBold, //Button
      labelSmall: AppTextStyles.poppinsMedium, //Page Info
      titleMedium: AppTextStyles.poppinsBold, //About Me Title
      bodyMedium: AppTextStyles.poppinsRegular, //About Me Body
      bodyLarge: AppTextStyles.poppinsSemiBold,
    ),
    primaryColor: AppColors.titleTextColor,
  );
}
