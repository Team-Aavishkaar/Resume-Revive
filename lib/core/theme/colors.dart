import 'package:flutter/material.dart';

/// App Color Scheme
/// Defines all colors used throughout the app
/// Organized by semantic meaning rather than just color values

class AppColors {
  // Primary Colors - Main brand colors (Green)
  static const Color primary = Color(0xFF2E7D32); // Professional Green
  static const Color primaryLight = Color(0xFF66BB6A);
  static const Color primaryDark = Color(0xFF1B5E20);

  // Secondary Colors - Accent colors (Yellow)
  static const Color secondary = Color(0xFFFBC02D); // Professional Yellow
  static const Color secondaryLight = Color(0xFFFDD835);
  static const Color secondaryDark = Color(0xFFF57F17);

  // Background Colors
  static const Color backgroundLight = Color(0xFFFAFAFA);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceLight = Colors.white;
  static const Color surfaceDark = Color(0xFF1E1E1E);

  // Text Colors
  static const Color textPrimaryLight = Color(0xFF212121);
  static const Color textSecondaryLight = Color(0xFF757575);
  static const Color textPrimaryDark = Color(0xFFE0E0E0);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);

  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFF44336);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  // Border and Divider Colors
  static const Color borderLight = Color(0xFFE0E0E0);
  static const Color borderDark = Color(0xFF424242);
  static const Color dividerLight = Color(0xFFBDBDBD);
  static const Color dividerDark = Color(0xFF424242);

  // Special Colors
  static const Color cardBackground = Colors.white;
  static const Color shadow = Color(0x1F000000); // Semi-transparent black
}

/// Extension to easily access colors based on theme brightness
extension AppColorsExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get primaryColor => Theme.of(this).primaryColor;
  Color get backgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get surfaceColor => Theme.of(this).cardColor;
  Color get textPrimary => isDarkMode ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
  Color get textSecondary => isDarkMode ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;
  Color get borderColor => isDarkMode ? AppColors.borderDark : AppColors.borderLight;
  Color get dividerColor => isDarkMode ? AppColors.dividerDark : AppColors.dividerLight;
}