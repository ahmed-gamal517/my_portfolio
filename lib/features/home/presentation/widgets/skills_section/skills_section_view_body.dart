import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/custom_skills_wrap_builder.dart';

class SkillsSectionViewBody extends StatelessWidget {
  const SkillsSectionViewBody({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: height,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AutoSizeText(
              AppStrings.skillsTitle,
              style: Theme.of(context).textTheme.titleMedium,
              maxFontSize: 28,
              minFontSize: 22,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ),
          CustomSkillsWrapBuilder(list: skills),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ),
          SliverToBoxAdapter(
            child: AutoSizeText(
              AppStrings.toolsAndSoftware,
              style: Theme.of(context).textTheme.titleMedium,
              maxFontSize: 28,
              minFontSize: 22,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ),
          CustomSkillsWrapBuilder(list: toolsAndSoftware),
          const SliverFillRemaining(hasScrollBody: false, child: SizedBox()),
        ],
      ),
    );
  }
}
