import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

class GlassContainer extends StatefulWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final bool enableBlur;
  final bool isHoverable;
  final Color? customBackground;
  final Color? customBorderColor;
  final VoidCallback? onTap;

  const GlassContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.borderRadius = 16.0,
    this.enableBlur = true,
    this.isHoverable = false,
    this.customBackground,
    this.customBorderColor,
    this.onTap,
  });

  @override
  State<GlassContainer> createState() => _GlassContainerState();
}

class _GlassContainerState extends State<GlassContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final defaultBg = isDark
        ? (_isHovered ? AppColors.darkCardHover : AppColors.darkCard)
        : (_isHovered ? AppColors.lightCardHover : AppColors.lightCard);

    final defaultBorder = isDark
        ? (_isHovered ? AppColors.darkBorderHighlight : AppColors.darkBorder)
        : (_isHovered ? AppColors.lightBorderHighlight : AppColors.lightBorder);

    final defaultShadow = isDark
        ? [
            BoxShadow(
              color: Colors.black.withValues(alpha: _isHovered ? 0.45 : 0.25),
              offset: Offset(0, _isHovered ? 12 : 6),
              blurRadius: _isHovered ? 24 : 16,
            ),
            if (_isHovered)
              BoxShadow(
                color: AppColors.cyan.withValues(alpha: 0.08),
                offset: const Offset(0, 4),
                blurRadius: 20,
              ),
          ]
        : [
            BoxShadow(
              color: const Color(0xFF64748B).withValues(alpha: _isHovered ? 0.16 : 0.08),
              offset: Offset(0, _isHovered ? 12 : 6),
              blurRadius: _isHovered ? 24 : 16,
            ),
          ];

    Widget content = AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      width: widget.width,
      height: widget.height,
      margin: widget.margin,
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.customBackground ?? defaultBg,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.customBorderColor ?? defaultBorder,
          width: 1.0,
        ),
        boxShadow: defaultShadow,
      ),
      child: widget.child,
    );

    if (widget.enableBlur && isDark) {
      content = ClipRRect(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: content,
        ),
      );
    }

    if (widget.isHoverable || widget.onTap != null) {
      content = MouseRegion(
        cursor: widget.onTap != null ? SystemMouseCursors.click : MouseCursor.defer,
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedScale(
            scale: _isHovered ? 1.015 : 1.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            child: content,
          ),
        ),
      );
    }

    return content;
  }
}
