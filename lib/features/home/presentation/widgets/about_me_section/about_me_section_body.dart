import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/custom_what_i_do_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

class AboutMeSectionBody extends StatelessWidget {
  const AboutMeSectionBody({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: height,
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
          Expanded(
            child: AutoSizeText(
              AppStrings.aboutMeSectionBody,
              maxFontSize: 20,
              minFontSize: 8,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
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
