import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_pesonal_info_list_tile.dart';

class CustomPersonalInfoContainer extends StatelessWidget {
  const CustomPersonalInfoContainer({super.key, required this.containerColor});
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          SizeConfig.width < 600
              ? MediaQuery.of(context).size.width * 0.7
              : MediaQuery.of(context).size.width * 0.18,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: containerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          personalInfoList.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
            ),
            child: CustomPersonalInfoListTile(
              iconPath: personalInfoList[index].logoPath,
              text: personalInfoList[index].text,
              onTap: () => openLinkLogic(index),
            ),
          ),
        ),
      ),
    );
  }

  void openLinkLogic(int index) {
    if (index == 0) {
      openPhoneLink(personalInfoList[index].text);
    } else if (index == 1) {
      openEmailLink(personalInfoList[index].text);
    } else if (index == 2) {
      openLocationLink(personalInfoList[index].text);
    }
  }
}
