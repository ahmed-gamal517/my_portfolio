import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';

class HomeScreenDesktopBody extends StatelessWidget {
  const HomeScreenDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15,
            vertical: MediaQuery.of(context).size.height * 0.07,
          ),
          child: CustomHomeScreenAppBar(),
        ),
      ],
    );
  }
}
