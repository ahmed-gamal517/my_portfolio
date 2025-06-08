import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/custom_projects_container.dart';

class CustomProjectsGridView extends StatelessWidget {
  const CustomProjectsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 60,
        mainAxisSpacing: 20,
        mainAxisExtent: 220,
        childAspectRatio: 1,
      ),
      itemBuilder:
          (_, index) => CustomProjectsContainer(project: projectsList[index]),
      itemCount: projectsList.length,
    );
  }
}
