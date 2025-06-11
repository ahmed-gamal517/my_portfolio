import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_main_body_carousel_slider.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/profile_info_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/tablet_home_screen/custom_animated_smooth_indicator.dart';

class HomeScreeenTabletMainRow extends StatelessWidget {
  const HomeScreeenTabletMainRow({super.key});

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
          const Expanded(flex: 1, child: ProfileInfoSectionBody()),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          const Expanded(flex: 3, child: CustomMainBodyCarouselSlider()),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          const CustomAnimatedSmoothIndicator(),
        ],
      ),
    );
  }
}
