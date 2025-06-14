import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/functions/openLink.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/data/models/projects_model.dart';

final gridViewTextGroup = AutoSizeGroup();

class CustomProjectsContainer extends StatelessWidget {
  const CustomProjectsContainer({super.key, required this.project});
  final ProjectsModel project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width:
                SizeConfig.width < 600
                    ? MediaQuery.of(context).size.width * 0.35
                    : MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(project.imagePath),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Center(
            child: AutoSizeText(
              group: gridViewTextGroup,
              project.title,
              style: Theme.of(context).textTheme.titleMedium,
              maxLines: 2,
              textAlign: TextAlign.center,
              maxFontSize: 20,
              minFontSize: 10,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          InkWell(
            onTap: () => openLink(project.link),
            child: AutoSizeText(
              project.linkText,
              maxFontSize: 16,
              minFontSize: 14,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                decoration: TextDecoration.underline,
                color: const Color(0xff0018F0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
