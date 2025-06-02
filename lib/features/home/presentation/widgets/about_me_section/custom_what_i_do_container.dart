import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class CustomWhatIDoContainer extends StatelessWidget {
  const CustomWhatIDoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        color: Color(0xffFDF4F4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        spacing: MediaQuery.of(context).size.width * 0.01,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.065,
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadiusGeometry.only(
                bottomLeft: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: Image.asset(
                AppAssets.flutterAppDevelopment,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                ResponsiveText(
                  text: AppStrings.whatIdo,
                  baseFontSize: 16,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Expanded(
                  child: ResponsiveText(
                    text: AppStrings.whatIdoBody,
                    baseFontSize: 12,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Color(0xff685D5D)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
