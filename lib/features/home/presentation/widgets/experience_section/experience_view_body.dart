import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience_section/custom_education_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience_section/custom_experience_list_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience_section/custom_experience_section_title.dart';

class ExperienceViewBody extends StatelessWidget {
  const ExperienceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Column(
        spacing: MediaQuery.of(context).size.height * 0.02,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomExperienceSectionTitle(text: AppStrings.educationTitle),
          const CustomEducationContainer(),
          const CustomExperienceSectionTitle(text: AppStrings.experienceTitle),
          const Expanded(child: CustomExperienceListView()),
        ],
      ),
    );
  }
}
