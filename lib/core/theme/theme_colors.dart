import 'package:flutter/material.dart';

class ThemeColors {
  ThemeColors._();
  // Primary Colors (based on #ff6e4d - orange/red)
  static const primary = Color(0xFFff6e4d); // Main primary color
  static const primaryLight = Color(0xFFff9e7d); // Lighter variant
  static const primaryDark = Color(0xFFc53e1d); // Darker variant
  static const primaryContainer = Color(0xFFffdbd2);

  // Container color for light theme

  // Secondary Colors (based on #009688 - teal)
  static const secondary = Color.fromARGB(
    255,
    115,
    207,
    198,
  ); // Main secondary color
  static const secondaryLight = Color(0xFF52c7b8); // Lighter variant
  static const secondaryDark = Color(0xFF00675b); // Darker variant
  static const secondaryContainer = Color(0xFFb2dfdb);

  // Container color for light theme

  // Neutral Colors
  static const background = Color(0xFFf8f9fa);
  static const surface = Color(0xFFffffff);
  static const surfaceVariant = Color(0xFFe9ecef);
  static const onBackground = Color(0xFF1a1a1a);
  static const onSurface = Color(0xFF1a1a1a);
  static const onSurfaceVariant = Color(0xFF495057);

  // Dark Theme Neutral Colors
  static const darkBackground = Color(0xFF121212);
  static const darkSurface = Color(0xFF1e1e1e);
  static const darkSurfaceVariant = Color(0xFF2d2d2d);
  static const darkOnBackground = Color(0xFFf8f9fa);
  static const darkOnSurface = Color(0xFFf8f9fa);
  static const darkOnSurfaceVariant = Color(0xFFadb5bd);

  // Semantic Colors
  static const error = Color(0xFFba1a1a);
  static const errorContainer = Color(0xFFffdad6);
  static const onError = Color(0xFFffffff);
  static const onErrorContainer = Color(0xFF410002);

  // Additional Colors
  static const outline = Color(0xFF6c757d);
  static const outlineVariant = Color(0xFFdee2e6);
  static const shadow = Color(0x52000000);
  static const scrim = Color(0x52000000);
}
