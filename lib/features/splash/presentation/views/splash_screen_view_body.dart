import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portofolio/core/router/app_router.dart';

class SplashScreenViewBody extends StatefulWidget {
  const SplashScreenViewBody({super.key});

  @override
  State<SplashScreenViewBody> createState() => _SplashScreenViewBodyState();
}

class _SplashScreenViewBodyState extends State<SplashScreenViewBody>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Start fade/scale animation after build
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    // Navigate after splash delay
    Future.delayed(const Duration(seconds: 3), () {
      navigateToHome();
    });
  }

  void navigateToHome() {
    GoRouter.of(context).go(AppRoutes.kHomeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.8, end: 1.0),
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeOutBack,
          builder: (context, value, child) {
            return Transform.scale(scale: value, child: child);
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image(
                image: AssetImage('assets/images/app_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
