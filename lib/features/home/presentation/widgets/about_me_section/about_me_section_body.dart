import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/custom_what_i_do_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

class AboutMeSectionBody extends StatelessWidget {
  const AboutMeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveText(
            text: AppStrings.aboutMeSectionTitle,
            baseFontSize: 18,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Expanded(
            child: AutoSizeText(
              AppStrings.aboutMeSectionBody,
              maxFontSize: 13,
              minFontSize: 8,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ResponsiveText(
            text: AppStrings.aboutMeSectionTitle2,
            baseFontSize: 18,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          const CustomWhatIDoContainer(),
        ],
      ),
    );
  }
}
