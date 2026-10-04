import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

class ProjectCardImage extends StatelessWidget {
  final String imagePath;
  final String category;
  final bool isDark;
  final bool isHovered;
  final double height;

  const ProjectCardImage({
    super.key,
    required this.imagePath,
    required this.category,
    required this.isDark,
    required this.isHovered,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(19)),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            AnimatedScale(
              scale: isHovered ? 1.05 : 1.0,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOutCubic,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                cacheWidth: 800,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: isDark
                        ? AppColors.darkSurface
                        : AppColors.lightCardHover,
                    child: const Center(
                      child: Icon(Icons.broken_image_rounded, size: 40),
                    ),
                  );
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    (isDark ? AppColors.darkCard : AppColors.lightCard)
                        .withValues(alpha: 0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: 14,
              right: 14,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: (isDark ? AppColors.darkBackground : Colors.white)
                      .withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
                  ),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    color: isDark
                        ? AppColors.cyan
                        : AppColors.primarylightModeColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
