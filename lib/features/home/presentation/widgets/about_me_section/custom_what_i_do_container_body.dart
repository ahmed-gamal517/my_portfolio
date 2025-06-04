import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class CustomWhatIDoContainerBody extends StatelessWidget {
  const CustomWhatIDoContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        ResponsiveText(
          text: AppStrings.whatIdo,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          baseFontSize: 16,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Expanded(
          child: AutoSizeText(
            AppStrings.whatIdoBody,
            minFontSize: 5,
            maxFontSize: 10,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Color(0xff685D5D)),
          ),
        ),
      ],
    );
  }
}
