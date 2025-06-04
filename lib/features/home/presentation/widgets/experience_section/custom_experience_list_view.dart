import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience_section/custom_experience_container.dart';

class CustomExperienceListView extends StatelessWidget {
  const CustomExperienceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:
          (_, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomExperienceContainer(
              experienceModel: experienceList[index],
            ),
          ),
      itemCount: experienceList.length,
    );
  }
}
