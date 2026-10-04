import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/widgets/badge_chip.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';
import 'package:my_portofolio/features/home/data/models/timeline_entry.dart';

class TimelineItemCard extends StatelessWidget {
  final TimelineEntry entry;
  final bool isDark;

  const TimelineItemCard({super.key, required this.entry, required this.isDark});

  @override
  Widget build(BuildContext context) {
    final imagePath = entry.imagePath;

    return GlassContainer(
      padding: const EdgeInsets.all(22),
      borderRadius: 18,
      isHoverable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: isDark ? AppColors.darkSurface : AppColors.lightCardHover,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: imagePath != null
                      ? Image.asset(imagePath, fit: BoxFit.contain)
                      : Icon(
                          Icons.verified_user_outlined,
                          color: isDark ? AppColors.cyan : AppColors.cyanAccent,
                          size: 24,
                        ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            entry.title,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: isDark
                                  ? AppColors.darkTextPrimary
                                  : AppColors.lightTextPrimary,
                            ),
                          ),
                        ),
                        if (entry.isCurrent)
                          const BadgeChip(
                            label: 'Current',
                            color: AppColors.emerald,
                            isGlowing: true,
                          ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      entry.organization,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: isDark ? AppColors.cyan : AppColors.primarylightModeColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${entry.period} · ${entry.location}',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: isDark
                            ? AppColors.darkTextMuted
                            : AppColors.lightTextMuted,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          ...entry.bullets.map((bullet) => _BulletLine(text: bullet, isDark: isDark)),
          const SizedBox(height: 10),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: entry.tags.map((tag) => BadgeChip(label: tag)).toList(),
          ),
        ],
      ),
    );
  }
}

class _BulletLine extends StatelessWidget {
  final String text;
  final bool isDark;

  const _BulletLine({required this.text, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                color: isDark ? AppColors.cyan : AppColors.cyanAccent,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
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
          ),
        ],
      ),
    );
  }
}
