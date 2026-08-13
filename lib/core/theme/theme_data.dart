import 'package:flutter/material.dart';

import '../../common/utils/constants/app_constants.dart';
import '../../common/utils/app_util.dart';
import '../di/injectable.dart';
import '../../domain/repository/preferences_repository.dart';
import 'theme_colors.dart';

class AppTheme {
  AppTheme._();

  static String currentTheme() {
    var prefRepo = getIt<PreferencesRepository>();
    return getThemeModeString(prefRepo.getThemeMode());
  }

  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: ThemeColors.surfaceVariant,
      fontFamily: AppConstants.kFontFamily,
      colorScheme: const ColorScheme.light(
        primary: ThemeColors.primary,
        onPrimary: Colors.white,
        primaryContainer: ThemeColors.primaryContainer,
        secondary: ThemeColors.secondary,
        onSecondary: Colors.white,
        secondaryContainer: ThemeColors.secondaryContainer,
        tertiary: ThemeColors.primaryLight,
        onTertiary: Colors.white,
        tertiaryContainer: ThemeColors.secondaryLight,
        surface: ThemeColors.surface,
        onSurface: ThemeColors.onSurface,
        surfaceContainerHighest: ThemeColors.surfaceVariant,
        onSurfaceVariant: ThemeColors.onSurfaceVariant,
        error: ThemeColors.error,
        onError: ThemeColors.onError,
        errorContainer: ThemeColors.errorContainer,
        onErrorContainer: ThemeColors.onErrorContainer,
        outline: ThemeColors.outline,
        outlineVariant: ThemeColors.outlineVariant,
        shadow: ThemeColors.shadow,
        surfaceTint: ThemeColors.primary,
        inverseSurface: Colors.white,
        onInverseSurface: ThemeColors.background,
        inversePrimary: ThemeColors.primaryLight,
        scrim: ThemeColors.scrim,
      ),
      appBarTheme: const AppBarThemeData(
        backgroundColor: Colors.white,
        foregroundColor: ThemeColors.secondaryDark,
        elevation: 3,
        shadowColor: Colors.black,
        iconTheme: IconThemeData(color: ThemeColors.secondaryDark),
        actionsIconTheme: IconThemeData(color: ThemeColors.secondaryDark),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: ThemeColors.surface,
        indicatorColor: ThemeColors.primaryContainer,
        elevation: 3,
        iconTheme: WidgetStateProperty.all(
          const IconThemeData(color: ThemeColors.primary),
        ),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(
            color: ThemeColors.primary,
            fontFamily: AppConstants.kFontFamily,
          ),
        ),
      ),
      cardTheme: const CardThemeData(
        color: ThemeColors.surface,
        surfaceTintColor: ThemeColors.surface,
        shadowColor: Colors.black,
        elevation: 2,
      ),
      dialogTheme: const DialogThemeData(
        backgroundColor: ThemeColors.surface,
        surfaceTintColor: ThemeColors.surface,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ThemeColors.primary,
        foregroundColor: Colors.white,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: ThemeColors.darkSurface,
      fontFamily: AppConstants.kFontFamily,
      colorScheme: const ColorScheme.dark(
        primary: ThemeColors.primaryLight,
        onPrimary: ThemeColors.darkBackground,
        primaryContainer: ThemeColors.primaryDark,
        secondary: ThemeColors.secondaryLight,
        onSecondary: ThemeColors.darkBackground,
        secondaryContainer: ThemeColors.secondaryDark,
        tertiary: ThemeColors.secondary,
        onTertiary: ThemeColors.darkBackground,
        tertiaryContainer: ThemeColors.primary,
        surface: ThemeColors.darkSurface,
        onSurface: ThemeColors.darkOnSurface,
        surfaceContainerHighest: ThemeColors.darkSurfaceVariant,
        onSurfaceVariant: ThemeColors.darkOnSurfaceVariant,
        error: Color(0xFFFFB4AB),
        onError: Color(0xFF690005),
        errorContainer: Color(0xFF93000A),
        onErrorContainer: Color(0xFFFFDAD6),
        outline: ThemeColors.secondaryLight,
        outlineVariant: ThemeColors.darkSurfaceVariant,
        shadow: Colors.black,
        surfaceTint: ThemeColors.primaryLight,
        inverseSurface: Colors.black,
        onInverseSurface: ThemeColors.darkSurface,
        inversePrimary: ThemeColors.primaryDark,
        scrim: Colors.white,
      ),
      appBarTheme: const AppBarThemeData(
        backgroundColor: Colors.black,
        foregroundColor: ThemeColors.darkOnSurface,
        elevation: 1,
        iconTheme: IconThemeData(color: ThemeColors.darkOnSurface),
        actionsIconTheme: IconThemeData(color: ThemeColors.darkOnSurface),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: ThemeColors.darkSurface,
        indicatorColor: ThemeColors.primaryDark,
        elevation: 3,
        iconTheme: WidgetStateProperty.all(
          const IconThemeData(color: ThemeColors.darkOnSurface),
        ),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(
            color: ThemeColors.darkOnSurface,
            fontFamily: AppConstants.kFontFamily,
          ),
        ),
      ),
      cardTheme: const CardThemeData(
        color: ThemeColors.darkSurfaceVariant,
        surfaceTintColor: ThemeColors.darkSurfaceVariant,
        shadowColor: Colors.black,
        elevation: 2,
      ),
      dialogTheme: const DialogThemeData(
        backgroundColor: ThemeColors.darkSurface,
        surfaceTintColor: ThemeColors.darkSurface,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ThemeColors.secondary,
        foregroundColor: ThemeColors.darkBackground,
      ),
    );
  }
}
