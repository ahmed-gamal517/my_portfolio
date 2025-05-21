import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/router/app_router.dart';
import 'package:my_portofolio/core/utils/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
    );
  }
}
