import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract class AppTextStyles {
  static final TextStyle displayLarge = GoogleFonts.inter(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static final TextStyle h1 = GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.w700, // w700 = Bold — used for screen titles
    color: AppColors.textPrimary,
    height: 1.3,
  );
  static final TextStyle h2 = GoogleFonts.inter(
    fontSize: 22,
    fontWeight: FontWeight.w600, // w600 = SemiBold — used for section headings
    color: AppColors.textPrimary,
    height: 1.3,
  );
  static final TextStyle h3 = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600, // Card titles, dialog headings
    color: AppColors.textPrimary,
    height: 1.4,
  );

  // --- Body text ---
  static final TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400, // w400 = Regular — main reading text
    color: AppColors.textPrimary,
    height: 1.6, // height: 1.6 = generous line height for comfortable reading
  );
  static final TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight:
        FontWeight.w400, // Most common body size — descriptions, list items
    color: AppColors.textPrimary,
    height: 1.5,
  );
  static final TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Captions, timestamps, helper text
    color: AppColors.textSecondary,
    height: 1.5,
  );

  // --- Labels (buttons, chips, tabs) ---
  static final TextStyle labelLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight
        .w600, // Primary button labels — semibold for readability at small sizes
    color: AppColors.surface,
    height: 1.0,
  );
  static final TextStyle labelMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500, // Chip labels, tab labels, secondary buttons
    color: AppColors.textPrimary,
    height: 1.0,
  );
  static final TextStyle labelSmall = GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w500, // Badge labels, tiny tags, status pills
    color: AppColors.textSecondary,
    height: 1.0,
  );

  // --- Price / number (tabular figures look better for prices) ---
  static final TextStyle price = GoogleFonts.inter(
    fontSize: 20,
    fontWeight:
        FontWeight.w700, // Bold price shown on course cards and checkout
    color: AppColors.accent,
    height: 1.0,
  );
}
