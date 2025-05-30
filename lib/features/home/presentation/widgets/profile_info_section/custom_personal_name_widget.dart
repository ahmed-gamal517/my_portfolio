import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class CustomPersonalNameWidget extends StatelessWidget {
  const CustomPersonalNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveText(
      text: AppStrings.personalName,
      style: Theme.of(context).textTheme.labelLarge,
      maxLines: 2,
      baseFontSize: 16,
    );
  }
}
