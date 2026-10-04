import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/core/widgets/badge_chip.dart';
import 'package:my_portofolio/core/widgets/gradient_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/hero_social_strip.dart';

class HeroContent extends StatelessWidget {
  final bool isDark;
  final bool isDesktop;
  final VoidCallback onExploreProjects;
  final VoidCallback onContactMe;

  const HeroContent({
    super.key,
    required this.isDark,
    required this.isDesktop,
    required this.onExploreProjects,
    required this.onContactMe,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        BadgeChip(
          label: 'Available for Flutter Roles & Projects',
          isGlowing: true,
          color: AppColors.emerald,
          icon: Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: AppColors.emerald,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Engineering Scalable Apps with Flutter & Clean Code.',
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: isDesktop ? 44 : 30,
            letterSpacing: -0.8,
            height: 1.18,
            color: isDark ? AppColors.darkTextPrimary : AppColors.lightTextPrimary,
          ),
        ),
        const SizedBox(height: 18),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 580),
          child: Text(
            "Hi, I'm Ahmed Gamal — a dedicated Flutter Developer and Teaching Assistant at MTI University. I build high-performance cross-platform mobile apps structured around Clean Architecture, BLoC/Cubit state management, and seamless real-time API integrations.",
            textAlign: isDesktop ? TextAlign.start : TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: isDesktop ? 16 : 14.5,
              height: 1.65,
              color: isDark
                  ? AppColors.darkTextSecondary
                  : AppColors.lightTextSecondary,
            ),
          ),
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 14,
          runSpacing: 12,
          alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
          children: [
            GradientButton(
              text: 'Explore Projects',
              variant: ButtonVariant.primary,
              icon: const Icon(
                Icons.arrow_forward_rounded,
                size: 16,
                color: Color(0xFF090D16),
              ),
              onPressed: onExploreProjects,
            ),
            GradientButton(
              text: 'View Resume',
              variant: ButtonVariant.secondary,
              icon: Icon(
                Icons.description_outlined,
                size: 16,
                color: isDark ? AppColors.cyan : AppColors.cyanAccent,
              ),
              onPressed: () => openLink(cvLink),
            ),
            GradientButton(
              text: 'Get In Touch',
              variant: ButtonVariant.outline,
              onPressed: onContactMe,
            ),
          ],
        ),
        const SizedBox(height: 28),
        HeroSocialStrip(isDark: isDark, isDesktop: isDesktop),
      ],
    );
  }
}
