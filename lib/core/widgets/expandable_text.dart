import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ExpandableText({super.key, required this.text, this.trimLines = 3});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _readMore = true;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyMedium;

    return LayoutBuilder(
      builder: (context, constraints) {
        final span = TextSpan(text: widget.text, style: textStyle);
        final tp = TextPainter(
          text: span,
          maxLines: widget.trimLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        final isOverflowing = tp.didExceedMaxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              firstChild: AutoSizeText(
                widget.text,
                maxLines: widget.trimLines,
                overflow: TextOverflow.ellipsis,
                maxFontSize: 20,
                minFontSize: 15,
                style: textStyle,
              ),
              secondChild: AutoSizeText(
                widget.text,
                maxFontSize: 20,
                minFontSize: 12,
                style: textStyle,
              ),
              crossFadeState:
                  _readMore
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
            ),
            if (isOverflowing)
              GestureDetector(
                onTap: () {
                  setState(() => _readMore = !_readMore);
                },
                child: Text(
                  _readMore ? 'Read more' : 'Read less',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
