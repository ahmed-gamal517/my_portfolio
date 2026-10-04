import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/core/widgets/section_header.dart';
import 'package:my_portofolio/features/home/data/skills_data.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills/skills_grid.dart';

class ModernSkillsSection extends StatelessWidget {
  const ModernSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isDesktop = context.isDesktop;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppBreakpoints.maxContentWidth),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 32.0 : 20.0,
            vertical: 48.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeader(
                title: 'Technical Skills & Tooling',
                subtitle:
                    'Specialized in mobile ecosystem technologies with strong command of architecture patterns, state machines, and modern development tooling.',
              ),
              const SizedBox(height: 36),
              _CategoryTitle(title: 'Core Framework & Architecture', isDark: isDark),
              const SizedBox(height: 16),
              SkillsGrid(
                items: [...coreSkills, ...architectureSkills],
                isDark: isDark,
              ),
              const SizedBox(height: 32),
              _CategoryTitle(title: 'Backend, Cloud & Networking', isDark: isDark),
              const SizedBox(height: 16),
              SkillsGrid(items: backendSkills, isDark: isDark),
              const SizedBox(height: 32),
              _CategoryTitle(title: 'Development Tools & Workflows', isDark: isDark),
              const SizedBox(height: 16),
              SkillsGrid(items: toolingSkills, isDark: isDark),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryTitle extends StatelessWidget {
  final String title;
  final bool isDark;

  const _CategoryTitle({required this.title, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: isDark ? AppColors.darkTextPrimary : AppColors.lightTextPrimary,
      ),
    );
  }
}
