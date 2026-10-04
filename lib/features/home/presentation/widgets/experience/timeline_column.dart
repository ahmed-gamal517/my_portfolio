import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/features/home/data/models/timeline_entry.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience/timeline_item_card.dart';

class TimelineColumn extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<TimelineEntry> entries;
  final bool isDark;

  const TimelineColumn({
    super.key,
    required this.title,
    required this.icon,
    required this.entries,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: isDark ? AppColors.cyan : AppColors.cyanAccent,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: isDark
                    ? AppColors.darkTextPrimary
                    : AppColors.lightTextPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        for (var i = 0; i < entries.length; i++) ...[
          if (i > 0) const SizedBox(height: 16),
          TimelineItemCard(entry: entries[i], isDark: isDark),
        ],
      ],
    );
  }
}
