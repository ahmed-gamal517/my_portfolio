import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/about_me_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/page_info_section/page_info_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/profile_info_section_body.dart';

class HomeScreenDesktopBody extends StatelessWidget {
  const HomeScreenDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15,
              vertical: MediaQuery.of(context).size.height * 0.05,
            ),
            child: CustomHomeScreenAppBar(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Row(
              children: [
                Expanded(flex: 2, child: ProfileInfoSectionBody()),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(flex: 5, child: AboutMeSectionBody()),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                CustomContainer(
                  padding: EdgeInsetsDirectional.all(
                    MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: PageInfoBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
