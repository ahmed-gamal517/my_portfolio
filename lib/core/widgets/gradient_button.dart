import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';

enum ButtonVariant { primary, secondary, outline }

class GradientButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? icon;
  final ButtonVariant variant;
  final double height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.variant = ButtonVariant.primary,
    this.height = 48.0,
    this.width,
    this.padding,
    this.borderRadius = 12.0,
  });

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    BoxDecoration decoration;
    TextStyle textStyle;

    switch (widget.variant) {
      case ButtonVariant.primary:
        decoration = BoxDecoration(
          gradient: AppColors.brandGradient,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: [
            BoxShadow(
              color: AppColors.cyan.withValues(alpha: _isHovered ? 0.45 : 0.25),
              offset: Offset(0, _isHovered ? 6 : 4),
              blurRadius: _isHovered ? 18 : 12,
            ),
          ],
        );
        textStyle = const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Color(0xFF090D16),
          letterSpacing: 0.2,
        );
        break;

      case ButtonVariant.secondary:
        decoration = BoxDecoration(
          color: isDark
              ? (_isHovered ? AppColors.darkCardHover : AppColors.darkCard)
              : (_isHovered ? AppColors.lightCardHover : AppColors.lightCard),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: _isHovered
                ? (isDark ? AppColors.cyan : AppColors.cyanAccent)
                : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
            width: 1.2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.05),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        );
        textStyle = TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: isDark ? AppColors.darkTextPrimary : AppColors.lightTextPrimary,
        );
        break;

      case ButtonVariant.outline:
        decoration = BoxDecoration(
          color: _isHovered
              ? (isDark ? AppColors.cyan.withValues(alpha: 0.1) : AppColors.cyanAccent.withValues(alpha: 0.1))
              : Colors.transparent,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: isDark ? AppColors.cyan : AppColors.cyanAccent,
            width: 1.5,
          ),
        );
        textStyle = TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: isDark ? AppColors.cyan : AppColors.cyanAccent,
        );
        break;
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedScale(
          scale: _isHovered ? 1.03 : 1.0,
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOutCubic,
            height: widget.height,
            width: widget.width,
            alignment: Alignment.center,
            padding: widget.padding ??
                const EdgeInsets.symmetric(horizontal: 20),
            decoration: decoration,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.icon != null) ...[
                  widget.icon!,
                  const SizedBox(width: 8),
                ],
                Flexible(
                  child: Text(
                    widget.text,
                    style: textStyle.copyWith(height: 1.2),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
