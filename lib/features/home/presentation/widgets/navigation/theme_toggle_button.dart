import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';

class ThemeToggleButton extends StatefulWidget {
  final bool isDark;

  const ThemeToggleButton({super.key, required this.isDark});

  @override
  State<ThemeToggleButton> createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDark;
    final activeColor = isDark ? AppColors.cyan : AppColors.primarylightModeColor;
    final iconColor = _isHovered
        ? activeColor
        : (isDark ? AppColors.cyan : AppColors.primarylightModeColor);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () => context.read<ThemeCubit>().changeTheme(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: isDark
                ? (_isHovered ? AppColors.darkCardHover : AppColors.darkCard)
                : (_isHovered ? AppColors.lightCardHover : AppColors.lightCard),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _isHovered
                  ? activeColor
                  : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
              width: 1.2,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: activeColor.withValues(alpha: 0.25),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          alignment: Alignment.center,
          child: Tooltip(
            message: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
            child: SvgPicture.asset(
              isDark ? AppAssets.darkSvgIcon : AppAssets.lightSvgIcon,
              width: 19,
              height: 19,
              colorFilter: ColorFilter.mode(
                iconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
