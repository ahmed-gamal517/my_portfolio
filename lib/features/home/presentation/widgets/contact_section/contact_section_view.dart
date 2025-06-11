import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/contact_section_view_body.dart';

class ContactSectionView extends StatelessWidget {
  const ContactSectionView({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ContactSectionViewBody(height: height);
  }
}
