import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/core/widgets/gradient_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/navigation/hoverable_nav_link.dart';
import 'package:my_portofolio/features/home/presentation/widgets/navigation/navbar_brand_logo.dart';
import 'package:my_portofolio/features/home/presentation/widgets/navigation/navbar_mobile_menu.dart';
import 'package:my_portofolio/features/home/presentation/widgets/navigation/theme_toggle_button.dart';

class ResponsiveNavbar extends StatefulWidget {
  final VoidCallback onAboutClick;
  final VoidCallback onExperienceClick;
  final VoidCallback onProjectsClick;
  final VoidCallback onSkillsClick;
  final VoidCallback onContactClick;

  const ResponsiveNavbar({
    super.key,
    required this.onAboutClick,
    required this.onExperienceClick,
    required this.onProjectsClick,
    required this.onSkillsClick,
    required this.onContactClick,
  });

  @override
  State<ResponsiveNavbar> createState() => _ResponsiveNavbarState();
}

class _ResponsiveNavbarState extends State<ResponsiveNavbar> {
  bool _isMobileMenuOpen = false;

  List<MapEntry<String, VoidCallback>> get _navItems => [
        MapEntry('About', widget.onAboutClick),
        MapEntry('Experience', widget.onExperienceClick),
        MapEntry('Projects', widget.onProjectsClick),
        MapEntry('Skills', widget.onSkillsClick),
        MapEntry('Contact', widget.onContactClick),
      ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isDesktop = MediaQuery.sizeOf(context).width >= 960;

    return Container(
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.darkBackground.withValues(alpha: 0.85)
            : AppColors.lightBackground.withValues(alpha: 0.90),
        border: Border(
          bottom: BorderSide(
            color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
          ),
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isDesktop ? 48.0 : 20.0,
                    vertical: 14.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavbarBrandLogo(isDark: isDark, onTap: widget.onAboutClick),
                      if (isDesktop) ...[
                        _buildDesktopLinks(isDark),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ThemeToggleButton(isDark: isDark),
                            const SizedBox(width: 16),
                            GradientButton(
                              text: 'Resume',
                              height: 40,
                              borderRadius: 10,
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              variant: ButtonVariant.primary,
                              icon: const Icon(
                                Icons.download_rounded,
                                size: 16,
                                color: Color(0xFF090D16),
                              ),
                              onPressed: () => openLink(cvLink),
                            ),
                          ],
                        ),
                      ] else
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ThemeToggleButton(isDark: isDark),
                            const SizedBox(width: 8),
                            IconButton(
                              icon: Icon(
                                _isMobileMenuOpen
                                    ? Icons.close_rounded
                                    : Icons.menu_rounded,
                                color: isDark
                                    ? AppColors.darkTextPrimary
                                    : AppColors.lightTextPrimary,
                              ),
                              onPressed: () => setState(
                                () => _isMobileMenuOpen = !_isMobileMenuOpen,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                if (!isDesktop && _isMobileMenuOpen)
                  NavbarMobileMenu(
                    isDark: isDark,
                    items: _navItems,
                    onClose: () => setState(() => _isMobileMenuOpen = false),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLinks(bool isDark) {
    final items = _navItems;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0) const SizedBox(width: 28),
          HoverableNavLink(
            label: items[i].key,
            onTap: items[i].value,
            isDark: isDark,
          ),
        ],
      ],
    );
  }
}
