import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class CustomPersonalInfoListTile extends StatelessWidget {
  const CustomPersonalInfoListTile({
    super.key,
    required this.iconPath,
    required this.text,
  });
  final String iconPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffD9D9D9),
          ),
          child: SvgPicture.asset(iconPath, fit: BoxFit.scaleDown),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        ResponsiveText(
          text: text,
          baseFontSize: 10,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
