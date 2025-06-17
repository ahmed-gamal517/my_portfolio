import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects_section/custom_projects_container.dart';

class CustomProjectsGridView extends StatelessWidget {
  const CustomProjectsGridView({
    super.key,
    this.physics,
    this.shrinkWrap = false,
  });
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double mainAxisExtent;
    if (screenWidth < 600) {
      mainAxisExtent = MediaQuery.of(context).size.height * 0.3;
    } else if (screenWidth < 1250) {
      mainAxisExtent = MediaQuery.of(context).size.height * 0.35;
    } else {
      mainAxisExtent = MediaQuery.of(context).size.height * 0.4;
    }

    return GridView.builder(
      physics: physics,
      shrinkWrap: shrinkWrap,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        crossAxisSpacing: 60,
        mainAxisSpacing: 20,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder:
          (_, index) => CustomProjectsContainer(project: projectsList[index]),
      itemCount: projectsList.length,
    );
  }
}
