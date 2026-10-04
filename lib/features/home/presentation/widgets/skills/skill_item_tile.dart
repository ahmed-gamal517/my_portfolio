import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';
import 'package:my_portofolio/features/home/data/models/skill_card_item.dart';

class SkillItemTile extends StatefulWidget {
  final SkillCardItem item;
  final bool isDark;

  const SkillItemTile({super.key, required this.item, required this.isDark});

  @override
  State<SkillItemTile> createState() => _SkillItemTileState();
}

class _SkillItemTileState extends State<SkillItemTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDark;
    final item = widget.item;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GlassContainer(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        borderRadius: 14,
        isHoverable: true,
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isDark
                    ? (_isHovered
                        ? AppColors.cyan.withValues(alpha: 0.15)
                        : AppColors.darkSurface)
                    : (_isHovered
                        ? AppColors.cyanAccent.withValues(alpha: 0.15)
                        : AppColors.lightCardHover),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: _isHovered
                      ? (isDark ? AppColors.cyan : AppColors.cyanAccent)
                      : (isDark ? AppColors.darkBorder : AppColors.lightBorder),
                ),
              ),
              child: SvgPicture.asset(item.iconPath, fit: BoxFit.contain),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: isDark
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.category,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: isDark
                          ? AppColors.darkTextMuted
                          : AppColors.lightTextMuted,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
