import 'package:flutter/material.dart';

/// Centralized responsive breakpoints and responsive layout utilities.
/// Follows official Flutter best practices: uses [MediaQuery.sizeOf]
/// to avoid unnecessary widget rebuilds when non-size media changes.
class AppBreakpoints {
  AppBreakpoints._();

  static const double mobile = 768.0;
  static const double tablet = 1024.0;
  static const double desktop = 1200.0;
  static const double maxContentWidth = 1200.0;
}

/// Extension on [BuildContext] providing clean, reactive responsive helpers.
extension ResponsiveContext on BuildContext {
  /// Current window width using efficient sizeOf
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Current window height using efficient sizeOf
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// True when the available screen width is below tablet breakpoint (< 768px)
  bool get isMobile => screenWidth < AppBreakpoints.mobile;

  /// True when screen width is between tablet and desktop (768px .. 1023px)
  bool get isTablet =>
      screenWidth >= AppBreakpoints.mobile && screenWidth < AppBreakpoints.tablet;

  /// True when screen width is at least desktop width (>= 1024px)
  bool get isDesktop => screenWidth >= AppBreakpoints.tablet;

  /// Returns a responsive value based on current screen category
  T responsiveValue<T>({
    required T mobile,
    T? tablet,
    required T desktop,
  }) {
    if (isDesktop) return desktop;
    if (isTablet) return tablet ?? desktop;
    return mobile;
  }
}

/// Backward compatibility shim for legacy SizeConfig usages.
class SizeConfig {
  static const double desktop = AppBreakpoints.desktop;
  static const double tablet = AppBreakpoints.mobile;
  static double width = 0.0;
  static double height = 0.0;

  static void init(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    width = size.width;
    height = size.height;
  }
}

