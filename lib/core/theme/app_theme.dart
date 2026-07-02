import 'package:flutter/material.dart'; // ThemeData, ColorScheme, TextTheme etc.
import 'package:google_fonts/google_fonts.dart'; // For textTheme helper
import 'app_colors.dart';
import 'app_text_styles.dart';

abstract class AppTheme {
  // A static getter returns a new ThemeData each time it is called
  // Only 'light' for now — add a 'dark' getter in a later day if needed
  static ThemeData get light {
    return ThemeData(
      useMaterial3:
          true, // Opt in to Material Design 3 — the current Flutter standard
      // ColorScheme is the foundation — most M3 widgets read from this automatically
      colorScheme: const ColorScheme(
        brightness:
            Brightness.light, // Tells widgets to use light-mode defaults
        primary:
            AppColors.primary, // AppBar, filled buttons, active tabs use this
        onPrimary: AppColors
            .surface, // 'on' = text/icon colour ON TOP of primary (white on teal)
        secondary: AppColors
            .primaryLight, // Chips, toggles, selection handles use this
        onSecondary: AppColors.textPrimary, // Text on top of secondary colour
        tertiary: AppColors
            .accent, // FAB, accent badges — maps to your coral CTA colour
        onTertiary: AppColors.surface, // White text on coral background
        error: AppColors.error, // Form validation red, error SnackBars
        onError: AppColors.surface, // White icon/text on error red
        surface: AppColors.surface, // Card and dialog backgrounds
        onSurface: AppColors.textPrimary, // Text on cards and dialogs
      ),

      // scaffoldBackgroundColor: the page background behind all widgets
      scaffoldBackgroundColor:
          AppColors.background, // Near-white — slightly warmer than pure white
      // TextTheme: maps Flutter's semantic text roles to your custom styles
      textTheme: GoogleFonts.interTextTheme().copyWith(
        displayLarge: AppTextStyles
            .displayLarge, // Used by very large hero text (splash, landing)
        headlineLarge:
            AppTextStyles.h1, // Screen titles (e.g. 'Browse Courses')
        headlineMedium: AppTextStyles.h2, // Section headers within a screen
        titleLarge: AppTextStyles.h3, // Card titles, list item primaries
        bodyLarge: AppTextStyles.bodyLarge, // Main reading text
        bodyMedium:
            AppTextStyles.bodyMedium, // Secondary reading text, descriptions
        bodySmall: AppTextStyles.bodySmall, // Captions, timestamps, fine print
        labelLarge: AppTextStyles.labelLarge, // ElevatedButton label
        labelMedium:
            AppTextStyles.labelMedium, // TextButton, OutlinedButton label
        labelSmall: AppTextStyles.labelSmall, // Chip labels, badges
      ),

      // --- AppBar theme ---
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors
            .surface, // White app bar — cleaner than coloured bars on content screens
        foregroundColor:
            AppColors.textPrimary, // Title and back-button icon colour
        elevation:
            0, // No drop shadow — use a bottom border instead (more modern)
        centerTitle: false, // Left-aligned title — standard on Android and iOS
        surfaceTintColor: Colors.transparent,
      ),

      // --- ElevatedButton (primary action: Enrol, Submit, Continue) ---
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, // Deep Teal fill
          foregroundColor: AppColors.surface, // White text and icons
          minimumSize: const Size(
            double.infinity,
            52,
          ), // Full-width, 52px height — easy to tap on mobile
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ), // Rounded corners — softer, modern look
          elevation: 0, // Flat button — shadow added by card if needed
          textStyle: AppTextStyles.labelLarge,
        ),
      ),

      // --- OutlinedButton (secondary action: Sign In, View Details) ---
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary, // Teal text and icon
          side: const BorderSide(
            color: AppColors.primary,
            width: 1.5,
          ), // Teal border
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTextStyles.labelLarge,
        ),
      ),

      // --- TextButton (tertiary: Forgot password, Skip, See all) ---
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor:
              AppColors.primary, // Teal text, no border, no background
          textStyle: AppTextStyles.labelMedium,
        ),
      ),

      // --- InputDecoration (all TextFormField widgets) ---
      inputDecorationTheme: InputDecorationTheme(
        filled: true, // Filled style — background colour shows inside the field
        fillColor: AppColors
            .surfaceVariant, // Light grey fill — visually groups the input
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ), // Rounded corners matching buttons
          borderSide:
              BorderSide.none, // No border when not focused — clean look
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 2,
          ), // Teal border appears when user taps into the field
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.error,
            width: 1.5,
          ), // Red border on validation failure
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ), // Comfortable touch target inside the field
        hintStyle: const TextStyle(
          color: AppColors.textDisabled,
        ), // Light grey placeholder text
      ),

      // --- Card theme ---
      cardTheme: CardThemeData(
        color: AppColors.surface, // White card background
        elevation: 0, // No shadow — use a subtle border instead (see below)
        shape: RoundedRectangleBorder(
          // Rounded corners and a thin grey border
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.surfaceVariant, width: 1),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ), // Default spacing between cards in a list
      ),

      // --- Chip theme (category filters, tags) ---
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.surfaceVariant, // Unselected chip background
        selectedColor: AppColors.primary, // Teal fill when chip is selected
        labelStyle: AppTextStyles.labelMedium, // Chip text style
        side:
            BorderSide.none, // No border — fill colour conveys selection state
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      // --- Bottom navigation bar ---
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surface, // White bar background
        selectedItemColor: AppColors.primary, // Teal icon + label when selected
        unselectedItemColor:
            AppColors.textSecondary, // Grey icon + label when not selected
        showUnselectedLabels: true, // Always show labels — clearer navigation
        type: BottomNavigationBarType
            .fixed, // 'fixed' keeps all items visible (vs. shifting which hides labels)
      ),
    );
  }
}
