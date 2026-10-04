import 'package:flutter/material.dart';

class AppColors {
  // Brand Accents & Gradients
  static const Color cyan = Color(0xFF00E5FF);
  static const Color cyanAccent = Color(0xFF06B6D4);
  static const Color indigo = Color(0xFF6366F1);
  static const Color indigoAccent = Color(0xFF4F46E5);
  static const Color purple = Color(0xFF8B5CF6);
  static const Color emerald = Color(0xFF10B981);
  static const Color amber = Color(0xFFF59E0B);
  static const Color rose = Color(0xFFF43F5E);

  // Brand Gradients
  static const LinearGradient brandGradient = LinearGradient(
    colors: [cyan, indigo],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [cyanAccent, indigoAccent],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient glassGradientDark = LinearGradient(
    colors: [Color(0x1AFFFFFF), Color(0x05FFFFFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient glassGradientLight = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xF5F8FAFC)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Dark Theme Palette
  static const Color darkBackground = Color(0xFF0A0E17);
  static const Color darkSurface = Color(0xFF111827);
  static const Color darkCard = Color(0xFF151D2C);
  static const Color darkCardHover = Color(0xFF1D283A);
  static const Color darkBorder = Color(0x1FFFFFFF); // 12% white
  static const Color darkBorderHighlight = Color(0x3300E5FF); // subtle cyan highlight
  static const Color darkTextPrimary = Color(0xFFF8FAFC);
  static const Color darkTextSecondary = Color(0xFF94A3B8);
  static const Color darkTextMuted = Color(0xFF64748B);

  // Light Theme Palette
  static const Color lightBackground = Color(0xFFF8FAFC);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightCardHover = Color(0xFFF1F5F9);
  static const Color lightBorder = Color(0xFFE2E8F0);
  static const Color lightBorderHighlight = Color(0x3306B6D4);
  static const Color lightTextPrimary = Color(0xFF0F172A);
  static const Color lightTextSecondary = Color(0xFF475569);
  static const Color lightTextMuted = Color(0xFF94A3B8);

  // Semantic & Backwards Compatibility
  static const Color lightContainerColor = lightCard;
  static const Color darkContainerColor = darkCard;
  static const Color titleTextColor = darkTextPrimary;
  static const Color btnColor = cyan;
  static const Color btnTextColor = Color(0xFF0A0E17);
  static const Color primarylightModeColor = Color(0xFF0891B2);
  static const Color primarydarkModeColor = Color(0xFF6366F1);
}
