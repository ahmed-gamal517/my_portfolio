import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/about_me_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/contact_section_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/profile_info_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/projects_section_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/skills_section_view.dart';

class HomeScreenMobileViewBody extends StatelessWidget {
  const HomeScreenMobileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: CustomHomeScreenAppBar()),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ),
          const SliverToBoxAdapter(child: ProfileInfoSectionBody()),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          SliverToBoxAdapter(
            child: AboutMeSectionBody(
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          SliverToBoxAdapter(
            child: ProjectsSectionView(
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          SliverToBoxAdapter(
            child: SkillsSectionView(
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          SliverToBoxAdapter(
            child: ContactSectionView(
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
        ],
        // child: Padding(
        //   padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
        //   child: Column(
        //     spacing: MediaQuery.of(context).size.height * 0.05,
        //     children: [
        //       CustomHomeScreenAppBar(),
        //       ProfileInfoSectionBody(),
        //       const ExperienceView(),
        //       const ProjectsSectionView(),
        //       const SkillsSectionView(),
        //       const ContactSectionView(),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
