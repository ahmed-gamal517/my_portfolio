import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills_section/skills_section_view_body.dart';

class SkillsSectionView extends StatelessWidget {
  const SkillsSectionView({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SkillsSectionViewBody(height: height);
  }
}
