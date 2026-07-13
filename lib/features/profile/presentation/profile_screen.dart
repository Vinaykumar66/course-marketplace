import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // ConsumerWidget, WidgetRef
import 'package:firebase_auth/firebase_auth.dart'; // FirebaseAuth.instance.signOut()
import 'package:go_router/go_router.dart'; // context.go('/login') after logout
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/models/user_roles.dart';
import '../application/profile_providers.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(currentUserProfileProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: profileAsync.when(
        error: (e, _) => Center(child: Text('Error loading Profile')),
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (user) {
          if (user == null) return const Center(child: Text('Not logged in'));
          return ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Center(
                child: CircleAvatar(
                  radius: 48,
                  backgroundColor: AppColors.primaryLight,
                  backgroundImage: user.photUrl != null
                      ? NetworkImage(user.photUrl!)
                      : null,

                  child: user.photUrl == null
                      ? Text(
                          user.name[0].toUpperCase(),
                          style: AppTextStyles.h1.copyWith(
                            color: AppColors.surface,
                          ),
                        )
                      : null,
                ),
              ),
              const SizedBox(height: 24),
              //Name
              Text('Name', style: AppTextStyles.labelMedium),
              const SizedBox(height: 4),

              Text(user.name, style: AppTextStyles.bodyLarge),
              const Divider(height: 32),

              //Email
              Text('Email', style: AppTextStyles.labelMedium),
              const SizedBox(height: 4),
              Text(user.email, style: AppTextStyles.bodyLarge),
              const Divider(height: 32),

              //Role badge
              Text('Role', style: AppTextStyles.labelMedium),
              const SizedBox(height: 8),
              Chip(
                label: Text(
                  user.role == UserRole.instructor ? 'Instructor' : 'Student',
                ),
                backgroundColor: user.role == UserRole.instructor
                    ? AppColors.accent.withOpacity(0.15)
                    : AppColors.primaryLight.withOpacity(0.3),
              ),
              const SizedBox(height: 40),
              OutlinedButton.icon(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  if (context.mounted) context.go('/login');
                },
                icon: const Icon(Icons.logout),
                label: const Text('Log Out'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.error,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
