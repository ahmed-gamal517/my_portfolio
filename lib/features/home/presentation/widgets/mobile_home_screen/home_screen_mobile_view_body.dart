import 'package:flutter/material.dart';
import 'package:my_portofolio/core/animations/slide_in.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/mobile_about_me_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/contact_section_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/profile_info_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/mobile_projects_section_view_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/mobile_skills_section_view_body.dart';

class HomeScreenMobileViewBody extends StatelessWidget {
  const HomeScreenMobileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: CustomScrollView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SlideInWidget(
              direction: SlideDirection.top,
              child: CustomHomeScreenAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ),
          const SliverToBoxAdapter(
            child: SlideInWidget(
              direction: SlideDirection.left,
              child: ProfileInfoSectionBody(isMobile: true),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          const SliverToBoxAdapter(
            child: SlideInWidget(
              direction: SlideDirection.right,
              child: MobileAboutMeSectionBody(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          const SliverToBoxAdapter(
            child: SlideInWidget(
              direction: SlideDirection.left,
              child: MobileProjectsSectionViewBody(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          const SliverToBoxAdapter(
            child: SlideInWidget(
              direction: SlideDirection.right,
              child: MobileSkillsSectionViewBody(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          const SliverToBoxAdapter(
            child: SlideInWidget(
              direction: SlideDirection.bottom,
              child: ContactSectionView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
