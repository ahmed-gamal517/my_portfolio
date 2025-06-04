import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';

class CustomWhatIDoImageWidget extends StatelessWidget {
  const CustomWhatIDoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.065,
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadiusGeometry.only(
          bottomLeft: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: Image.asset(AppAssets.flutterAppDevelopment, fit: BoxFit.cover),
      ),
    );
  }
}
