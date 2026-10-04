import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';

class AboutJourneyCard extends StatelessWidget {
  final bool isDark;

  const AboutJourneyCard({super.key, required this.isDark});

  static const List<String> _paragraphs = [
    "I hold a Bachelor's degree in Computer Science from the Modern University for Technology and Information (MTI), graduating in 2023 with a strong foundation in software engineering principles, algorithms, and mobile development.",
    "After completing my one-year military service in December 2024, I joined MTI University as a Teaching Assistant. In this role, I mentor aspiring computer scientists and teach practical software construction, which continuously sharpens my communication and engineering rigor.",
    "I build self-initiated and production apps using Flutter with an uncompromising focus on Clean Architecture, MVVM, and BLoC/Cubit state management. I'm actively seeking opportunities to deliver impactful, cross-platform mobile experiences.",
  ];

  @override
  Widget build(BuildContext context) {
    final bodyStyle = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      fontSize: 14.5,
      height: 1.65,
      color: isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary,
    );

    return GlassContainer(
      padding: const EdgeInsets.all(28),
      borderRadius: 20,
      isHoverable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.cyan.withValues(alpha: isDark ? 0.15 : 0.10),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.cyan.withValues(alpha: 0.3),
                  ),
                ),
                child: const Icon(
                  Icons.person_outline_rounded,
                  color: AppColors.cyan,
                  size: 22,
                ),
              ),
              const SizedBox(width: 14),
              Text(
                'My Journey',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: -0.2,
                  color: isDark
                      ? AppColors.darkTextPrimary
                      : AppColors.lightTextPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          for (var i = 0; i < _paragraphs.length; i++) ...[
            if (i > 0) const SizedBox(height: 14),
            Text(_paragraphs[i], style: bodyStyle),
          ],
        ],
      ),
    );
  }
}
