import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class StylePreviewScreen extends StatelessWidget {
  const StylePreviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Reads the ThemeData applied in main.dart
    return Scaffold(
      appBar: AppBar(title: const Text('Style Preview')),
      body: SingleChildScrollView(
        // Scrollable so all elements are reachable
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Typography section ---
            Text('Typography', style: AppTextStyles.h2), // Section heading
            const SizedBox(height: 16),
            Text('Display Large', style: AppTextStyles.displayLarge),
            Text('Heading 1 — Screen Title', style: AppTextStyles.h1),
            Text('Heading 2 — Section', style: AppTextStyles.h2),
            Text('Heading 3 — Card Title', style: AppTextStyles.h3),
            Text(
              'Body Large — main reading text',
              style: AppTextStyles.bodyLarge,
            ),
            Text('Body Medium — descriptions', style: AppTextStyles.bodyMedium),
            Text('Body Small — captions', style: AppTextStyles.bodySmall),
            Text('₹2,499', style: AppTextStyles.price),
            const SizedBox(height: 32),

            // --- Buttons section ---
            Text('Buttons', style: AppTextStyles.h2),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enrol Now'),
            ), // Primary CTA — should be teal, full-width, 52px tall
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {},
              child: const Text('View Details'),
            ), // Secondary action — teal border, white fill
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot password?'),
            ), // Tertiary — teal text only
            const SizedBox(height: 32),

            // --- Input fields section ---
            Text('Input Fields', style: AppTextStyles.h2),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email address',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ), // Should show grey fill, rounded corners, teal focus border
            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
            ),
            const SizedBox(height: 32),

            // --- Cards section ---
            Text('Cards', style: AppTextStyles.h2),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter for Beginners',
                      style: AppTextStyles.h3,
                    ), // Course title
                    const SizedBox(height: 4),
                    Text(
                      'Learn Flutter from scratch in 30 days',
                      style: AppTextStyles.bodyMedium,
                    ), // Course description
                    const SizedBox(height: 8),
                    Text(
                      '₹2,499',
                      style: AppTextStyles.price,
                    ), // Price in accent colour
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // --- Chips section ---
            Text('Chips', style: AppTextStyles.h2),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                // Wrap lays chips in rows, wrapping to next line
                for (final label in [
                  'Flutter',
                  'Firebase',
                  'Dart',
                  'Riverpod',
                  'UI/UX',
                ])
                  Chip(
                    label: Text(label),
                  ), // Uses chipTheme from AppTheme automatically
              ],
            ),
            const SizedBox(height: 32),

            // --- Colour swatches ---
            Text('Colour Swatches', style: AppTextStyles.h2),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final entry in {
                  'Primary': AppColors.primary,
                  'PrimLight': AppColors.primaryLight,
                  'Accent': AppColors.accent,
                  'BG': AppColors.background,
                  'Surface': AppColors.surface,
                  'Error': AppColors.error,
                  'Success': AppColors.success,
                }.entries)
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: entry.value,
                      borderRadius: BorderRadius.circular(8),
                    ), // Colour swatch tile
                    alignment: Alignment
                        .bottomCenter, // Label at the bottom of the tile
                    child: Container(
                      color: Colors.black45,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        entry.key,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
