import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

class HoverableNavLink extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final bool isDark;

  const HoverableNavLink({
    super.key,
    required this.label,
    required this.onTap,
    required this.isDark,
  });

  @override
  State<HoverableNavLink> createState() => _HoverableNavLinkState();
}

class _HoverableNavLinkState extends State<HoverableNavLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final activeColor = widget.isDark ? AppColors.cyan : AppColors.cyanAccent;
    final defaultColor = widget.isDark
        ? AppColors.darkTextSecondary
        : AppColors.lightTextSecondary;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: _isHovered ? FontWeight.w600 : FontWeight.w500,
            fontSize: 14,
            color: _isHovered ? activeColor : defaultColor,
          ),
          child: Text(widget.label),
        ),
      ),
    );
  }
}
