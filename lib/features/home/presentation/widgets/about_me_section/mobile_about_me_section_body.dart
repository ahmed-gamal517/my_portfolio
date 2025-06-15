import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/expandable_text.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/custom_what_i_do_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

class MobileAboutMeSectionBody extends StatelessWidget {
  const MobileAboutMeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            AppStrings.aboutMeSectionTitle,
            maxFontSize: 28,
            minFontSize: 22,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          const ExpandableText(
            text: AppStrings.aboutMeSectionBody,
            trimLines: 4,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          AutoSizeText(
            AppStrings.aboutMeSectionTitle2,
            maxFontSize: 28,
            minFontSize: 22,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          const CustomWhatIDoContainer(),
        ],
      ),
    );
  }
}
