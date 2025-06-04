import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/data/models/experience_model.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

class CustomExperienceContainer extends StatelessWidget {
  const CustomExperienceContainer({super.key, required this.experienceModel});
  final ExperienceModel experienceModel;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(experienceModel.imagePath),
                fit: BoxFit.scaleDown,
              ),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: MediaQuery.of(context).size.height * 0.01,
            children: [
              AutoSizeText(
                'Company: ${experienceModel.company}',
                maxFontSize: 16,
                minFontSize: 10,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                children: [
                  AutoSizeText(
                    'Role:',
                    maxFontSize: 16,
                    minFontSize: 10,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AutoSizeText(
                    ' ${experienceModel.role}',
                    maxFontSize: 16,
                    minFontSize: 10,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Row(
                children: [
                  AutoSizeText(
                    'Duration:',
                    maxFontSize: 16,
                    minFontSize: 10,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AutoSizeText(
                    ' ${experienceModel.period}',
                    maxFontSize: 16,
                    minFontSize: 10,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
