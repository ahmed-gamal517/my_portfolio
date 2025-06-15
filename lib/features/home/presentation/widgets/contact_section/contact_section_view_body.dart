import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/contact_section_form.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

class ContactSectionViewBody extends StatelessWidget {
  const ContactSectionViewBody({
    super.key,
    this.height,
    this.shrinkWrap = false,
    this.physics = const BouncingScrollPhysics(),
  });
  final double? height;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: height,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: CustomScrollView(
        physics: physics,
        shrinkWrap: shrinkWrap,
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
          const SliverToBoxAdapter(child: ContactSectionForm()),
        ],
      ),
    );
  }
}
