import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class CustomHomeScreenAppBar extends StatelessWidget {
  const CustomHomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ResponsiveText(
          text: AppStrings.appBarTitle,
          baseFontSize: 28,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          radius: MediaQuery.of(context).size.width * 0.015,
          child: SvgPicture.asset(
            AppAssets.lightSvgIcon,
            fit: BoxFit.scaleDown,
            width: MediaQuery.of(context).size.width * 0.015,
            height: MediaQuery.of(context).size.width * 0.015,
          ),
        ),
      ],
    );
  }
}
