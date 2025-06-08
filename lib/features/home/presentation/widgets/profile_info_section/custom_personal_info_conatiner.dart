import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_pesonal_info_list_tile.dart';

class CustomPersonalInfoContainer extends StatelessWidget {
  const CustomPersonalInfoContainer({super.key, required this.containerColor});
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            ),
          ),
        ),
      ),
    );
  }
}
