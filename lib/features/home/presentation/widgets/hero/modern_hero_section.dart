import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/hero_content.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/hero_profile_card.dart';

class ModernHeroSection extends StatelessWidget {
  final VoidCallback onExploreProjects;
  final VoidCallback onContactMe;

  const ModernHeroSection({
    super.key,
    required this.onExploreProjects,
    required this.onContactMe,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isDesktop = context.isDesktop;

    final content = HeroContent(
      isDark: isDark,
      isDesktop: isDesktop,
      onExploreProjects: onExploreProjects,
      onContactMe: onContactMe,
    );

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppBreakpoints.maxContentWidth),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 32.0 : 20.0,
            vertical: isDesktop ? 60.0 : 36.0,
          ),
          child: isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 6, child: content),
                    const SizedBox(width: 48),
                    Expanded(flex: 5, child: HeroProfileCard(isDark: isDark)),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeroProfileCard(isDark: isDark, isCompact: true),
                    const SizedBox(height: 36),
                    content,
                  ],
                ),
        ),
      ),
    );
  }
}
