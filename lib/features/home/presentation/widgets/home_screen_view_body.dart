import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_state.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about/modern_about_section.dart';
import 'package:my_portofolio/features/home/presentation/widgets/ambient_background.dart';
import 'package:my_portofolio/features/home/presentation/widgets/back_to_top_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/modern_contact_section.dart';
import 'package:my_portofolio/features/home/presentation/widgets/experience/modern_experience_section.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/modern_hero_section.dart';
import 'package:my_portofolio/features/home/presentation/widgets/navigation/responsive_navbar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects/modern_projects_section.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills/modern_skills_section.dart';

class HomeScreenViewBody extends StatefulWidget {
  const HomeScreenViewBody({super.key});

  @override
  State<HomeScreenViewBody> createState() => _HomeScreenViewBodyState();
}

class _HomeScreenViewBodyState extends State<HomeScreenViewBody> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  final ValueNotifier<bool> _showBackToTop = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final shouldShow = _scrollController.offset > 400;
    if (_showBackToTop.value != shouldShow) {
      _showBackToTop.value = shouldShow;
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _showBackToTop.dispose();
    super.dispose();
  }

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOutCubic,
        alignment: 0.05,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final isDark = context.read<ThemeCubit>().isDark;

        return Scaffold(
          backgroundColor:
              isDark ? AppColors.darkBackground : AppColors.lightBackground,
          body: Stack(
            children: [
              RepaintBoundary(
                child: AmbientBackground(isDark: isDark),
              ),

              // Main Scrollable Area
              Column(
                children: [
                  // Sticky Top Navbar isolated from scroll repaint
                  RepaintBoundary(
                    child: ResponsiveNavbar(
                      onAboutClick: () => _scrollTo(_aboutKey),
                      onExperienceClick: () => _scrollTo(_experienceKey),
                      onProjectsClick: () => _scrollTo(_projectsKey),
                      onSkillsClick: () => _scrollTo(_skillsKey),
                      onContactClick: () => _scrollTo(_contactKey),
                    ),
                  ),

                  // Continuous Content Scroll
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          KeyedSubtree(
                            key: _heroKey,
                            child: ModernHeroSection(
                              onExploreProjects: () => _scrollTo(_projectsKey),
                              onContactMe: () => _scrollTo(_contactKey),
                            ),
                          ),
                          KeyedSubtree(
                            key: _aboutKey,
                            child: const ModernAboutSection(),
                          ),
                          KeyedSubtree(
                            key: _experienceKey,
                            child: const ModernExperienceSection(),
                          ),
                          KeyedSubtree(
                            key: _projectsKey,
                            child: const ModernProjectsSection(),
                          ),
                          KeyedSubtree(
                            key: _skillsKey,
                            child: const ModernSkillsSection(),
                          ),
                          KeyedSubtree(
                            key: _contactKey,
                            child: ModernContactSection(
                              onBackToTop: () => _scrollTo(_heroKey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ValueListenableBuilder<bool>(
                valueListenable: _showBackToTop,
                builder: (context, show, _) {
                  if (!show) return const SizedBox.shrink();
                  return BackToTopButton(
                    isDark: isDark,
                    onPressed: () => _scrollTo(_heroKey),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

