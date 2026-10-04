import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/core/widgets/gradient_button.dart';

class NavbarMobileMenu extends StatelessWidget {
  final bool isDark;
  final List<MapEntry<String, VoidCallback>> items;
  final VoidCallback onClose;

  const NavbarMobileMenu({
    super.key,
    required this.isDark,
    required this.items,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
        border: Border(
          top: BorderSide(
            color: isDark ? AppColors.darkBorder : AppColors.lightBorder,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final item in items)
            InkWell(
              onTap: () {
                onClose();
                item.value();
              },
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  item.key,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: isDark
                        ? AppColors.darkTextPrimary
                        : AppColors.lightTextPrimary,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 12),
          GradientButton(
            text: 'Download Resume',
            variant: ButtonVariant.primary,
            icon: const Icon(
              Icons.download_rounded,
              size: 16,
              color: Color(0xFF090D16),
            ),
            onPressed: () {
              onClose();
              openLink(cvLink);
            },
          ),
        ],
      ),
    );
  }
}
