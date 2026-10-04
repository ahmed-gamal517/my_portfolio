import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';

class ContactCard extends StatefulWidget {
  final Widget icon;
  final String title;
  final String value;
  final VoidCallback onTap;
  final bool isDark;

  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
    required this.isDark,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDark;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: GlassContainer(
          padding: const EdgeInsets.all(20),
          borderRadius: 16,
          isHoverable: true,
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isDark
                      ? (_isHovered
                          ? AppColors.cyan.withValues(alpha: 0.18)
                          : AppColors.darkSurface)
                      : (_isHovered
                          ? AppColors.cyanAccent.withValues(alpha: 0.18)
                          : AppColors.lightCardHover),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: _isHovered
                        ? (isDark ? AppColors.cyan : AppColors.cyanAccent)
                        : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
                  ),
                ),
                child: widget.icon,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: isDark
                            ? AppColors.darkTextMuted
                            : AppColors.lightTextMuted,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.value,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.5,
                        color: isDark
                            ? AppColors.darkTextPrimary
                            : AppColors.lightTextPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: _isHovered
                    ? (isDark ? AppColors.cyan : AppColors.cyanAccent)
                    : (isDark ? AppColors.darkTextMuted : AppColors.lightTextMuted),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
