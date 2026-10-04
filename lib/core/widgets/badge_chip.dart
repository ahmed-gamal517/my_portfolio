import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

class BadgeChip extends StatelessWidget {
  final String label;
  final Widget? icon;
  final Color? color;
  final bool isGlowing;

  const BadgeChip({
    super.key,
    required this.label,
    this.icon,
    this.color,
    this.isGlowing = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final baseColor = color ?? (isDark ? AppColors.cyan : AppColors.primarylightModeColor);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: baseColor.withValues(alpha: isDark ? 0.12 : 0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: baseColor.withValues(alpha: isDark ? 0.35 : 0.25),
          width: 1.0,
        ),
        boxShadow: isGlowing
            ? [
                BoxShadow(
                  color: baseColor.withValues(alpha: 0.25),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 12,
              letterSpacing: 0.3,
              color: isDark ? baseColor : baseColor,
            ),
          ),
        ],
      ),
    );
  }
}
