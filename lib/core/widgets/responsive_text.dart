import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double baseFontSize;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const ResponsiveText({
    super.key,
    required this.text,
    required this.baseFontSize,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  double _getResponsiveFontSize(double screenWidth) {
    double scaleFactor;

    if (screenWidth < 700) {
      // Mobile
      scaleFactor = screenWidth / 550;
    } else if (screenWidth < 1200) {
      // Tablet
      scaleFactor = screenWidth / 1000;
    } else {
      // Desktop
      scaleFactor = screenWidth / 1920;
    }

    double responsiveFontSize = baseFontSize * scaleFactor;
    return responsiveFontSize.clamp(baseFontSize * 0.8, baseFontSize * 1.2);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontSize = _getResponsiveFontSize(screenWidth);

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style:
          style?.copyWith(fontSize: responsiveFontSize) ??
          TextStyle(fontSize: responsiveFontSize),
    );
  }
}
