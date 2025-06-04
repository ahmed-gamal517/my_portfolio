import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/desktop_home_screen/home_screen_desktop_view_body.dart';

class HomeScreenDesktopView extends StatelessWidget {
  const HomeScreenDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          CustomHomeScreenAppBar(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          HomeScreenDesktopViewBody(),
        ],
      ),
    );
  }
}
