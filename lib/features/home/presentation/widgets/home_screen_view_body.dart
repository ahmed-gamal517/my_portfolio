import 'package:flutter/material.dart';
import 'package:my_portofolio/core/widgets/adaptive_layout.dart';
import 'package:my_portofolio/features/home/presentation/widgets/desktop_home_screen/home_screen_desktop_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/home_screen_mobile_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/home_screen_tablet_body.dart';

class HomeScreenViewBody extends StatelessWidget {
  const HomeScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const HomeScreenMobileBody(),
        tabletLayout: (context) => const HomeScreenTabletBody(),
        desktopLayout: (context) => const HomeScreenDesktopView(),
      ),
    );
  }
}
