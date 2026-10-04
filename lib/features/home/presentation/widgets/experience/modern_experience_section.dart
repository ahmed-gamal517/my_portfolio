import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/core/widgets/section_header.dart';
import 'package:my_portofolio/features/home/data/experience_data.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience/timeline_column.dart';

class ModernExperienceSection extends StatelessWidget {
  const ModernExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isDesktop = context.isDesktop;

    final workColumn = TimelineColumn(
      title: 'Work Experience',
      icon: Icons.work_outline_rounded,
      entries: workExperience,
      isDark: isDark,
    );
    final educationColumn = TimelineColumn(
      title: 'Academic Foundation',
      icon: Icons.school_outlined,
      entries: education,
      isDark: isDark,
    );

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
                title: 'Experience & Education',
                subtitle:
                    'A track record of software engineering, academic teaching, and active development in high-velocity mobile environments.',
              ),
              const SizedBox(height: 32),
              isDesktop
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: workColumn),
                        const SizedBox(width: 24),
                        Expanded(child: educationColumn),
                      ],
                    )
                  : Column(
                      children: [
                        workColumn,
                        const SizedBox(height: 28),
                        educationColumn,
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
