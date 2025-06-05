import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/custom_projects_grid_view.dart';

class ProjectsSectionViewBody extends StatelessWidget {
  const ProjectsSectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: MediaQuery.of(context).size.height * 0.02,
        children: [
          AutoSizeText(
            AppStrings.projectTitle,
            style: Theme.of(context).textTheme.titleMedium,
            maxFontSize: 28,
            minFontSize: 22,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
              ),
              child: const CustomProjectsGridView(),
            ),
          ),
        ],
      ),
    );
  }
}
