import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/data/models/skills_model.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/custom_skills_container.dart';

class CustomSkillsWrapBuilder extends StatelessWidget {
  const CustomSkillsWrapBuilder({super.key, required this.list});
  final List<SkillsModel> list;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Wrap(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20),
            child: CustomSkillsContainer(skill: list[index]),
          ),
        ),
      ),
    );
  }
}
