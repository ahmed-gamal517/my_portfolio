import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/functions/open_link.dart';

class SocialIconButton extends StatefulWidget {
  final String iconPath;
  final String url;
  final bool isDark;

  const SocialIconButton({
    super.key,
    required this.iconPath,
    required this.url,
    required this.isDark,
  });

  @override
  State<SocialIconButton> createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDark;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () => openLink(widget.url),
        child: AnimatedScale(
          scale: _isHovered ? 1.12 : 1.0,
          duration: const Duration(milliseconds: 150),
          child: Container(
            width: 38,
            height: 38,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isDark
                  ? (_isHovered ? AppColors.darkCardHover : AppColors.darkCard)
                  : (_isHovered ? AppColors.lightCardHover : AppColors.lightCard),
              shape: BoxShape.circle,
              border: Border.all(
                color: _isHovered
                    ? (isDark ? AppColors.cyan : AppColors.cyanAccent)
                    : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
              ),
              boxShadow: _isHovered
                  ? [
                      BoxShadow(
                        color: AppColors.cyan.withValues(alpha: 0.25),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: SvgPicture.asset(
              widget.iconPath,
              colorFilter: ColorFilter.mode(
                _isHovered
                    ? (isDark ? AppColors.cyan : AppColors.primarylightModeColor)
                    : (isDark
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
