import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_main_body_carousel_slider.dart';
import 'package:my_portofolio/features/home/presentation/widgets/page_info_section/page_info_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/profile_info_section_body.dart';

class HomeScreenDesktopViewBody extends StatelessWidget {
  const HomeScreenDesktopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.04,
        right: MediaQuery.of(context).size.width * 0.04,
        bottom: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Row(
        children: [
          Expanded(flex: 2, child: ProfileInfoSectionBody()),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Expanded(flex: 5, child: CustomMainBodyCarouselSlider()),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          CustomContainer(
            padding: EdgeInsetsDirectional.all(
              MediaQuery.of(context).size.height * 0.03,
            ),
            child: PageInfoBody(),
          ),
        ],
      ),
    );
  }
}
