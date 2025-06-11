import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_main_body_carousel_slider.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/profile_info_section_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreenTabletViewBody extends StatelessWidget {
  const HomeScreenTabletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const CustomHomeScreenAppBar(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),

          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Row(
              children: [
                Expanded(flex: 1, child: ProfileInfoSectionBody()),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(flex: 3, child: CustomMainBodyCarouselSlider()),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                CustomContainer(
                  padding: EdgeInsets.all(5),
                  child: AnimatedSmoothIndicator(
                    activeIndex: BlocProvider.of<AppCubit>(context).currPage,
                    count: 5,
                    axisDirection: Axis.vertical,
                    effect: WormEffect(
                      dotHeight: MediaQuery.of(context).size.height * 0.02,
                      dotWidth: MediaQuery.of(context).size.height * 0.02,
                      activeDotColor: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
