import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/core/widgets/section_header.dart';
import 'package:my_portofolio/features/home/data/projects_data.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects/project_card.dart';

class ModernProjectsSection extends StatelessWidget {
  const ModernProjectsSection({super.key});

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
                title: 'Featured Projects',
                subtitle:
                    'Production-grade mobile applications built with Flutter, focusing on clean architecture, responsive performance, and intuitive user experiences.',
              ),
              const SizedBox(height: 36),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isWide = constraints.maxWidth >= AppBreakpoints.mobile;

                  if (isWide) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: projects.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 580,
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 28,
                        mainAxisExtent: 490,
                      ),
                      itemBuilder: (context, index) => ProjectCard(
                        project: projects[index],
                        isDark: isDark,
                      ),
                    );
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: projects.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 24),
                    itemBuilder: (context, index) => ProjectCard(
                      project: projects[index],
                      isDark: isDark,
                      imageHeight: 180,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

