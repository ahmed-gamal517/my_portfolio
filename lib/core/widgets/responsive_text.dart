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

  double _getScaleFactor(double width) {
    if (width < 600) return width / 390; // Mobile
    if (width < 1024) return width / 768; // Tablet
    return width / 1440; // Desktop
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scaleFactor = _getScaleFactor(constraints.maxWidth);
        final scaledFontSize = (baseFontSize * scaleFactor).clamp(
          baseFontSize * 0.8,
          baseFontSize * 1.2,
        );

        return Text(
          text,
          style:
              style?.copyWith(fontSize: scaledFontSize) ??
              TextStyle(fontSize: scaledFontSize),
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
      },
    );
  }
}
