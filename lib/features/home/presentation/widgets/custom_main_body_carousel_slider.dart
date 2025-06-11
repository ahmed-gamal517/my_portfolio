import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/about_me_section_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/contact_section_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience_section/experience_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/projects_section_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/skills_section_view.dart';

class CustomMainBodyCarouselSlider extends StatelessWidget {
  const CustomMainBodyCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.77,
      child: CarouselSlider(
        carouselController: BlocProvider.of<AppCubit>(context).controller,
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            BlocProvider.of<AppCubit>(context).pageScrolled(index);
          },
          scrollDirection: Axis.vertical,
          viewportFraction: 1,
          scrollPhysics: const BouncingScrollPhysics(),
          enableInfiniteScroll: false,
        ),
        items: [
          const AboutMeSectionBody(),
          const ExperienceView(),
          const ProjectsSectionView(),
          const SkillsSectionView(),
          const ContactSectionView(),
        ],
      ),
    );
  }
}
