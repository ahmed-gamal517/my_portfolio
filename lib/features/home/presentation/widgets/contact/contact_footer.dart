import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

class ContactFooter extends StatelessWidget {
  final bool isDark;
  final VoidCallback onBackToTop;

  const ContactFooter({
    super.key,
    required this.isDark,
    required this.onBackToTop,
  });

  @override
  Widget build(BuildContext context) {
    final accent = isDark ? AppColors.cyan : AppColors.primarylightModeColor;

    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 36, bottom: 28),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                final isCompact = constraints.maxWidth < 520;
                final branding = _buildBranding(isDark);
                final backToTop = _buildBackToTop(accent);

                if (isCompact) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      branding,
                      const SizedBox(height: 16),
                      backToTop,
                    ],
                  );
                }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    branding,
                    backToTop,
                  ],
                );
              },
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                'Engineered with Flutter Web',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.5,
                  letterSpacing: 0.2,
                  color: isDark
                      ? AppColors.darkTextSecondary
                      : AppColors.lightTextSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBranding(bool isDark) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            gradient: AppColors.brandGradient,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'AG',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Color(0xFF090D16),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          'Ahmed Gamal',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: isDark
                ? AppColors.darkTextPrimary
                : AppColors.lightTextPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildBackToTop(Color accent) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onBackToTop,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkCard : AppColors.lightCardHover,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Back to top',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: accent,
                ),
              ),
              const SizedBox(width: 6),
              Icon(Icons.arrow_upward_rounded, size: 14, color: accent),
            ],
          ),
        ),
      ),
    );
  }
}


