import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/projects_section_view_body.dart';

class ProjectsSectionView extends StatelessWidget {
  const ProjectsSectionView({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ProjectsSectionViewBody(height: height);
  }
}
