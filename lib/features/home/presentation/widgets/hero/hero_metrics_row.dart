import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/hero_metric_column.dart';

class HeroMetricsRow extends StatelessWidget {
  final bool isDark;

  const HeroMetricsRow({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    final dividerColor = isDark ? AppColors.darkBorder : AppColors.lightBorder;
    final divider = Container(width: 1, height: 28, color: dividerColor);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.darkSurface.withValues(alpha: 0.6)
            : AppColors.lightBackground.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: dividerColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: HeroMetricColumn(
              value: '2+',
              label: 'Years Exp',
              isDark: isDark,
            ),
          ),
          divider,
          Expanded(
            child: HeroMetricColumn(
              value: '4+',
              label: 'Mobile Apps',
              isDark: isDark,
            ),
          ),
          divider,
          Expanded(
            child: HeroMetricColumn(
              value: 'CS Grad',
              label: 'MTI Univ',
              isDark: isDark,
            ),
          ),
        ],
      ),
    );
  }
}
