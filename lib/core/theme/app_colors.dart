import 'package:flutter/material.dart';

abstract class AppColors {
  // --- Primary palette ---
  static const Color primary = Color(
    0xFF006D77,
  ); // Deep Teal — main brand colour (nav bar, filled buttons)
  static const Color primaryLight = Color(
    0xFF83C5BE,
  ); // Soft Teal — chips, selected state, subtle backgrounds
  static const Color primaryDark = Color(
    0xFF004E57,
  ); // Dark Teal — pressed/hover state for primary elements

  // --- Accent (call-to-action) ---
  static const Color accent = Color(
    0xFFE76F51,
  ); // Warm Coral — Enrol button, price badge, promo banners
  static const Color accentLight = Color(
    0xFFF4A261,
  ); // Light Coral — hover state for accent elements

  // --- Backgrounds ---
  static const Color background = Color(
    0xFFF8FAFC,
  ); // Near-white — main scaffold background (easier on eyes than pure white)
  static const Color surface = Color(
    0xFFFFFFFF,
  ); // Pure white — cards, bottom sheets, dialogs
  static const Color surfaceVariant = Color(
    0xFFEEF2F7,
  ); // Light grey — dividers, input fill, skeleton loaders

  // --- Text ---
  static const Color textPrimary = Color(
    0xFF1A1A2E,
  ); // Near-black — headings and body text
  static const Color textSecondary = Color(
    0xFF6B7280,
  ); // Grey — captions, hint text, timestamps
  static const Color textDisabled = Color(
    0xFFB0B7C3,
  ); // Light grey — disabled labels and icons

  // --- Semantic colours ---
  static const Color success = Color(
    0xFF2D6A4F,
  ); // Dark green — completion badges, success SnackBars
  static const Color error = Color(
    0xFFE63946,
  ); // Accessible red — form validation errors
  static const Color warning = Color(
    0xFFF4A261,
  ); // Amber — draft status, low-stock warnings

  // --- Stars / ratings ---
  static const Color starFilled = Color(
    0xFFF5A623,
  ); // Gold star — filled rating stars
  static const Color starEmpty = Color(
    0xFFDDE1E7,
  ); // Light grey — unfilled rating stars
}
