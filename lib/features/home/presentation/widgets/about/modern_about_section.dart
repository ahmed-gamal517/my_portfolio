import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/core/widgets/section_header.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about/about_journey_card.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about/about_pillar_card.dart';

class ModernAboutSection extends StatelessWidget {
  const ModernAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isDesktop = context.isDesktop;

    final pillars = [
      AboutPillarCard(
        icon: Icons.architecture_rounded,
        title: 'Clean Architecture & MVVM',
        description:
            'Strict separation of concern across Data, Domain, and Presentation layers ensuring testable, decoupled, and scalable codebases.',
        isDark: isDark,
        accentColor: AppColors.cyan,
      ),
      AboutPillarCard(
        icon: Icons.bolt_rounded,
        title: 'Predictable State Management',
        description:
            'Expert handling of BLoC & Cubit pattern for seamless unidirectional data flow, smooth 60fps animations, and deterministic state.',
        isDark: isDark,
        accentColor: AppColors.indigo,
      ),
      AboutPillarCard(
        icon: Icons.cloud_sync_rounded,
        title: 'APIs & Real-Time Sync',
        description:
            'Robust RESTful API integration, Firebase real-time sync, local caching strategies, and resilient network error resilience.',
        isDark: isDark,
        accentColor: AppColors.emerald,
      ),
    ];

    final pillarsColumn = Column(
      children: [
        for (var i = 0; i < pillars.length; i++) ...[
          if (i > 0) const SizedBox(height: 16),
          pillars[i],
        ],
      ],
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
                title: 'About & Engineering Philosophy',
                subtitle:
                    'Dedicated to building scalable Flutter applications grounded in sound architectural principles, clean code, and continuous learning.',
              ),
              const SizedBox(height: 32),
              isDesktop
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 6,
                          child: AboutJourneyCard(isDark: isDark),
                        ),
                        const SizedBox(width: 24),
                        Expanded(flex: 5, child: pillarsColumn),
                      ],
                    )
                  : Column(
                      children: [
                        AboutJourneyCard(isDark: isDark),
                        const SizedBox(height: 20),
                        pillarsColumn,
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
