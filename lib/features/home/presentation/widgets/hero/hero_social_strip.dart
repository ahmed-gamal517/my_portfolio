import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/social_icon_button.dart';

class HeroSocialStrip extends StatelessWidget {
  final bool isDark;
  final bool isDesktop;

  const HeroSocialStrip({
    super.key,
    required this.isDark,
    required this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        Text(
          'Connect:',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: isDark ? AppColors.darkTextMuted : AppColors.lightTextMuted,
          ),
        ),
        const SizedBox(width: 12),
        ...socialMediaList.map((item) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SocialIconButton(
              iconPath: item.logoPath,
              url: item.link,
              isDark: isDark,
            ),
          );
        }),
      ],
    );
  }
}
