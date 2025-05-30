import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class CustomProfileInfoButton extends StatelessWidget {
  const CustomProfileInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: Theme.of(context).primaryColor, width: 1),
      ),
      elevation: 0,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightElevation: 0,
      hoverElevation: 0,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
      color: AppColors.btnColor,
      child: ResponsiveText(
        text: AppStrings.btnText,
        baseFontSize: 14,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
