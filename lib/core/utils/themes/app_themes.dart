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
      labelSmall: AppTextStyles.firaSansMedium, //Page Info
      titleMedium: AppTextStyles.firaSansBold, //About Me Title
      bodyMedium: AppTextStyles.firaSansRegular, //About Me Body
      bodyLarge: AppTextStyles.firaSansSemiBold,
    ),
    primaryColor: AppColors.titleTextColor,
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      titleLarge: AppTextStyles.appBarTitle, //Website Name
      labelLarge: AppTextStyles.personalName.copyWith(
        color: Colors.white,
      ), //Personal Name
      labelMedium: AppTextStyles.personalTitle.copyWith(
        color: Colors.white,
      ), //Personal Title and info
      headlineMedium: AppTextStyles.sigmarBold, //Button
      labelSmall: AppTextStyles.firaSansMedium.copyWith(
        color: Colors.white,
      ), //Page Info
      titleMedium: AppTextStyles.firaSansBold.copyWith(
        color: Colors.white,
      ), //About Me Title
      bodyMedium: AppTextStyles.firaSansRegular.copyWith(
        color: Colors.white,
      ), //About Me Body
      bodyLarge: AppTextStyles.firaSansSemiBold.copyWith(color: Colors.white),
    ),
    primaryColor: AppColors.darkBackground,
  );
}
