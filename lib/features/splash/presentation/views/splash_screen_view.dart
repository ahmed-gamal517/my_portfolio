import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/features/splash/presentation/views/splash_screen_view_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.lightBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SplashScreenViewBody(),
      ),
    );
  }
}
