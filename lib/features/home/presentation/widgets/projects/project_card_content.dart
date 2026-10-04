import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/core/widgets/badge_chip.dart';
import 'package:my_portofolio/core/widgets/gradient_button.dart';
import 'package:my_portofolio/features/home/data/models/project_item_data.dart';

class ProjectCardContent extends StatelessWidget {
  final ProjectItemData project;
  final bool isDark;

  const ProjectCardContent({
    super.key,
    required this.project,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            project.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              letterSpacing: -0.2,
              color: isDark
                  ? AppColors.darkTextPrimary
                  : AppColors.lightTextPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            project.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 1.5,
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: project.tags
                .take(4)
                .map((tag) => BadgeChip(label: tag))
                .toList(),
          ),
          const SizedBox(height: 16),
          GradientButton(
            text: 'View Code on GitHub',
            height: 42,
            borderRadius: 10,
            variant: ButtonVariant.secondary,
            icon: SvgPicture.asset(
              AppAssets.gitHubIcon,
              width: 16,
              height: 16,
              colorFilter: ColorFilter.mode(
                isDark ? AppColors.cyan : AppColors.primarylightModeColor,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () => openLink(project.githubUrl),
          ),
        ],
      ),
    );
  }
}
