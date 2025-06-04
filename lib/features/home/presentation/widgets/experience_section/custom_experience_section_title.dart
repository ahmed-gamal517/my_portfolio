import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomExperienceSectionTitle extends StatelessWidget {
  const CustomExperienceSectionTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxFontSize: 28,
      minFontSize: 18,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
