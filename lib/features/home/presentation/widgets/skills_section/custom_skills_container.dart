import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/data/models/skills_model.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/custom_skills_image_widget.dart';

final AutoSizeGroup skillsAutoSizeGroup = AutoSizeGroup();

class CustomSkillsContainer extends StatelessWidget {
  const CustomSkillsContainer({super.key, required this.skill});
  final SkillsModel skill;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: MediaQuery.of(context).size.height * 0.01,
        children: [
          CustomSkillsImageWidget(skill: skill),
          SizedBox(
            child: AutoSizeText(
              skill.name,
              group: skillsAutoSizeGroup,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
              maxLines: 2,
              maxFontSize: 19,
              minFontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
