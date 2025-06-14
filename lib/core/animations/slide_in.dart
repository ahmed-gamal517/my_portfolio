import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

enum SlideDirection { top, bottom, left, right }

class SlideInWidget extends StatefulWidget {
  final Widget child;
  final SlideDirection direction;
  final Duration duration;
  final Curve curve;

  const SlideInWidget({
    super.key,
    required this.child,
    required this.direction,
    this.duration = const Duration(milliseconds: 800),
    this.curve = Curves.easeOut,
  });

  @override
  State<SlideInWidget> createState() => _SlideInWidgetState();
}

class _SlideInWidgetState extends State<SlideInWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  bool _hasAnimated = false;

  Offset getOffsetFromDirection(SlideDirection direction) {
    switch (direction) {
      case SlideDirection.top:
        return const Offset(0, -1);
      case SlideDirection.bottom:
        return const Offset(0, 1);
      case SlideDirection.left:
        return const Offset(-1, 0);
      case SlideDirection.right:
        return const Offset(1, 0);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);

    _animation = Tween<Offset>(
      begin: getOffsetFromDirection(widget.direction),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: widget.curve));
  }

  void _triggerAnimation() {
    if (!_hasAnimated) {
      _controller.forward();
      _hasAnimated = true;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: widget.key ?? UniqueKey(),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1) _triggerAnimation();
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder:
            (context, child) => SlideTransition(
              position: _animation,
              child: Opacity(opacity: _hasAnimated ? 1.0 : 0.0, child: child),
            ),
        child: widget.child,
      ),
    );
  }
}
