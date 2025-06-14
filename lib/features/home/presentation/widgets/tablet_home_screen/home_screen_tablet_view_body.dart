import 'package:flutter/material.dart';
import 'package:my_portofolio/core/animations/slide_in.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/tablet_home_screen/home_screen_tablet_main_row.dart';

class HomeScreenTabletViewBody extends StatelessWidget {
  const HomeScreenTabletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const SlideInWidget(
            direction: SlideDirection.top,
            child: CustomHomeScreenAppBar(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),

          const HomeScreeenTabletMainRow(),
        ],
      ),
    );
  }
}
