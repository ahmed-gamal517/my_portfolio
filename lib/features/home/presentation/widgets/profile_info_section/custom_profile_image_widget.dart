import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/functions/show_image_dialog.dart';

class CustomProfileImageWidget extends StatelessWidget {
  const CustomProfileImageWidget({super.key, this.isMobile = false});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showImageDialog(context, AppAssets.personalImg),
      child: Container(
        height:
            isMobile
                ? MediaQuery.of(context).size.height * 0.26
                : MediaQuery.of(context).size.height * 0.17,
        width:
            isMobile
                ? MediaQuery.of(context).size.width * 0.5
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
