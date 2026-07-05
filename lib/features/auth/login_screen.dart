import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log In')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login screen',
                style: AppTextStyles.h2,
              ), // Placeholder — replaced with real form in Day 8
              const SizedBox(height: 8),
              Text('Full form arrives Day 8.', style: AppTextStyles.bodyMedium),
              const SizedBox(height: 32),
              // 'Don't have an account?' link — navigates to signup
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: AppTextStyles.bodySmall,
                  ),
                  TextButton(
                    onPressed: () => context.go('/signup'),
                    child: const Text('Sign up'),
                  ), // context.go('/signup') navigates to SignupScreen
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
