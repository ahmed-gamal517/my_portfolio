import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
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
    return GridView.builder(
      physics: physics,
      shrinkWrap: shrinkWrap,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: SizeConfig.width < 600 ? 1 : 2,
        crossAxisSpacing: 60,
        mainAxisSpacing: 20,
        mainAxisExtent: MediaQuery.of(context).size.height * 0.32,
        childAspectRatio: 1,
      ),
      itemBuilder:
          (_, index) => CustomProjectsContainer(project: projectsList[index]),
      itemCount: projectsList.length,
    );
  }
}
