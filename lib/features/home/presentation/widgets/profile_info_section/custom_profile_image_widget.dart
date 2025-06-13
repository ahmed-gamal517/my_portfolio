import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/fuctions/show_image_dialog.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';

class CustomProfileImageWidget extends StatelessWidget {
  const CustomProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showImageDialog(context, AppAssets.personalImg),
      child: Container(
        height:
            SizeConfig.width < 600
                ? MediaQuery.of(context).size.height * 0.24
                : MediaQuery.of(context).size.height * 0.17,
        width:
            SizeConfig.width < 600
                ? MediaQuery.of(context).size.width * 0.30
                : MediaQuery.of(context).size.width * 0.09,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 2),
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: AssetImage(AppAssets.personalImg),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
