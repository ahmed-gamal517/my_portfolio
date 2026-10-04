import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/widgets/badge_chip.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/hero_metrics_row.dart';

class HeroProfileCard extends StatelessWidget {
  final bool isDark;
  final bool isCompact;

  const HeroProfileCard({
    super.key,
    required this.isDark,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: isCompact ? 360 : 440),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.cyan.withValues(alpha: isDark ? 0.18 : 0.12),
                      blurRadius: 60,
                      spreadRadius: 10,
                    ),
                    BoxShadow(
                      color: AppColors.indigo.withValues(alpha: isDark ? 0.18 : 0.12),
                      blurRadius: 70,
                      spreadRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
            GlassContainer(
              padding: const EdgeInsets.all(24),
              borderRadius: 24,
              isHoverable: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: AppColors.brandGradient,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.cyan.withValues(alpha: 0.3),
                          blurRadius: 16,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: isCompact ? 68 : 84,
                      backgroundImage: const ResizeImage(
                        AssetImage(AppAssets.personalImg),
                        width: 340,
                        height: 340,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Ahmed Gamal',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: isCompact ? 20 : 22,
                      letterSpacing: -0.2,
                      color: isDark
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Flutter Developer · Teaching Assistant',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: isDark ? AppColors.cyan : AppColors.primarylightModeColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    children: [
                      BadgeChip(label: 'Flutter & Dart'),
                      BadgeChip(label: 'Clean Architecture'),
                      BadgeChip(label: 'BLoC / Cubit'),
                      BadgeChip(label: 'REST & Firebase'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  HeroMetricsRow(isDark: isDark),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
