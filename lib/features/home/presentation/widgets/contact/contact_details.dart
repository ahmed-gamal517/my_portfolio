import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/contact_card.dart';

class ContactDetails extends StatelessWidget {
  final bool isDark;

  const ContactDetails({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    final cards = [
      (AppAssets.mailIcon, 'Email Address', 'ahmedgamal5179@gmail.com',
          'mailto:ahmedgamal5179@gmail.com'),
      (AppAssets.whatsAppIcon, 'WhatsApp Chat', '+20 1018468569',
          'https://wa.me/201018468569'),
      (AppAssets.phoneIcon, 'Phone Number', '+20 1018468569',
          'tel:+201018468569'),
      (AppAssets.gpsIcon, 'Location',
          'Cairo, Egypt (Available Globally / Remote)',
          'https://maps.google.com/?q=Cairo,Egypt'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < cards.length; i++) ...[
          if (i > 0) const SizedBox(height: 14),
          ContactCard(
            icon: SvgPicture.asset(cards[i].$1, width: 22, height: 22),
            title: cards[i].$2,
            value: cards[i].$3,
            onTap: () => openLink(cards[i].$4),
            isDark: isDark,
          ),
        ],
      ],
    );
  }
}
