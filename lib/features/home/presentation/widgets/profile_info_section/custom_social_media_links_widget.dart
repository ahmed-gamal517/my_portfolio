import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';

class CustomSocialMediaLinksWidget extends StatelessWidget {
  const CustomSocialMediaLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(socialMediaList.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
              border: Border.all(
                color: socialMediaList[index].borderColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
            ),

            child: SvgPicture.asset(
              socialMediaList[index].logoPath,
              fit: BoxFit.scaleDown,
            ),
          ),
        );
      }),
    );
  }
}
