import 'package:flutter/material.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/core/widgets/section_header.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/contact_details.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/contact_footer.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/contact_form.dart';

class ModernContactSection extends StatelessWidget {
  final VoidCallback onBackToTop;

  const ModernContactSection({super.key, required this.onBackToTop});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isDesktop = context.isDesktop;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: AppBreakpoints.maxContentWidth),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 32.0 : 20.0,
            vertical: 48.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeader(
                title: 'Get In Touch',
                subtitle:
                    "Whether you have an exciting mobile development opportunity, an engineering query, or simply want to connect — I'd love to hear from you.",
              ),
              const SizedBox(height: 36),
              isDesktop
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex: 5, child: ContactDetails(isDark: isDark)),
                        const SizedBox(width: 32),
                        Expanded(flex: 6, child: ContactForm(isDark: isDark)),
                      ],
                    )
                  : Column(
                      children: [
                        ContactDetails(isDark: isDark),
                        const SizedBox(height: 32),
                        ContactForm(isDark: isDark),
                      ],
                    ),
              const SizedBox(height: 60),
              ContactFooter(isDark: isDark, onBackToTop: onBackToTop),
            ],
          ),
        ),
      ),
    );
  }
}
