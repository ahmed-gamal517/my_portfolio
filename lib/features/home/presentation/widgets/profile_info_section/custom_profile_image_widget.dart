import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';

class CustomProfileImageWidget extends StatelessWidget {
  const CustomProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.height * 0.16,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(AppAssets.personalImg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
