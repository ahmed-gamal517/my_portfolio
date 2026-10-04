import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

class BackToTopButton extends StatelessWidget {
  final bool isDark;
  final VoidCallback onPressed;

  const BackToTopButton({
    super.key,
    required this.isDark,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 28,
      right: 28,
      child: FloatingActionButton.small(
        onPressed: onPressed,
        backgroundColor:
            isDark ? AppColors.darkCardHover : AppColors.lightCardHover,
        foregroundColor:
            isDark ? AppColors.cyan : AppColors.primarylightModeColor,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isDark
                ? AppColors.darkBorderHighlight
                : AppColors.lightBorderHighlight,
          ),
        ),
        tooltip: 'Back to top',
        child: const Icon(Icons.arrow_upward_rounded, size: 20),
      ),
    );
  }
}
