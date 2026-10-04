import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/features/home/presentation/widgets/ambient_glow.dart';

/// Renders subtle ambient radial glow effects behind portfolio content.
/// Wrapped in [IgnorePointer] and [ClipRect] so it never interferes with
/// scrolling, gestures, or viewport bounds.
class AmbientBackground extends StatelessWidget {
  final bool isDark;

  const AmbientBackground({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ClipRect(
        child: RepaintBoundary(
          child: Stack(
          children: [
            AmbientGlow(
              top: -120,
              left: -120,
              size: 500,
              color: AppColors.cyan.withValues(alpha: isDark ? 0.08 : 0.05),
              blurRadius: 180,
              spreadRadius: 80,
            ),
            AmbientGlow(
              top: 800,
              right: -100,
              size: 550,
              color: AppColors.indigo.withValues(alpha: isDark ? 0.08 : 0.04),
              blurRadius: 200,
              spreadRadius: 80,
            ),
            AmbientGlow(
              bottom: 300,
              left: -100,
              size: 450,
              color: AppColors.purple.withValues(alpha: isDark ? 0.06 : 0.03),
              blurRadius: 180,
              spreadRadius: 60,
            ),
          ],
        ),
      ),
    ),
  );
  }
}
