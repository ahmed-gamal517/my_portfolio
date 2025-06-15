import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/custom_skills_container.dart';

class MobileSkillsSectionViewBody extends StatelessWidget {
  const MobileSkillsSectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Column(
        children: [
          AutoSizeText(
            AppStrings.skillsTitle,
            style: Theme.of(context).textTheme.titleMedium,
            maxFontSize: 28,
            minFontSize: 22,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Wrap(
            children: List.generate(
              skills.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20),
                child: CustomSkillsContainer(skill: skills[index]),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          AutoSizeText(
            AppStrings.toolsAndSoftware,
            style: Theme.of(context).textTheme.titleMedium,
            maxFontSize: 28,
            minFontSize: 22,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Wrap(
            children: List.generate(
              toolsAndSoftware.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20),
                child: CustomSkillsContainer(skill: toolsAndSoftware[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
