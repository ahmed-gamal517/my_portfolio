import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/custom_contact_section_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/custom_contact_section_text_field.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

class ContactSectionViewBody extends StatelessWidget {
  const ContactSectionViewBody({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: height,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),

        slivers: [
          SliverToBoxAdapter(
            child: AutoSizeText(
              AppStrings.contactTitle,
              style: Theme.of(context).textTheme.titleMedium,
              maxFontSize: 28,
              minFontSize: 22,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ),
          SliverToBoxAdapter(
            child: AutoSizeText(
              AppStrings.email,
              style: Theme.of(context).textTheme.labelSmall,
              maxFontSize: 20,
              minFontSize: 14,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ),
          const SliverToBoxAdapter(child: CustomContactSectionTextField()),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ),
          SliverToBoxAdapter(
            child: AutoSizeText(
              AppStrings.subject,
              style: Theme.of(context).textTheme.labelSmall,
              maxFontSize: 20,
              minFontSize: 14,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ),
          const SliverToBoxAdapter(child: CustomContactSectionTextField()),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ),
          SliverToBoxAdapter(
            child: AutoSizeText(
              AppStrings.message,
              style: Theme.of(context).textTheme.labelSmall,
              maxFontSize: 20,
              minFontSize: 14,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ),
          const SliverToBoxAdapter(
            child: CustomContactSectionTextField(maxLines: 5),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ),
          const CustomContactSectionButton(),
        ],
      ),
    );
  }
}
