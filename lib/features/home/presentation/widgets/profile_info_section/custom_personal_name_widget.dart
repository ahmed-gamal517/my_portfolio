import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';

class CustomPersonalNameWidget extends StatelessWidget {
  const CustomPersonalNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      AppStrings.personalName,
      style: Theme.of(context).textTheme.labelLarge,
      maxLines: 1,
      maxFontSize: 16,
    );
  }
}
