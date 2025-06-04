import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';

class CustomEducationContainer extends StatelessWidget {
  const CustomEducationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.height * 0.45,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            AppStrings.universityGraduationYear,
            style: Theme.of(context).textTheme.bodyMedium,
            maxFontSize: 12,
          ),
          AutoSizeText(
            AppStrings.universityName,
            style: Theme.of(context).textTheme.bodyLarge,
            maxFontSize: 14,
            minFontSize: 8,
          ),
          AutoSizeText(
            AppStrings.universityDegree,
            style: Theme.of(context).textTheme.bodyMedium,
            maxFontSize: 12,
          ),
        ],
      ),
    );
  }
}
