import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../shared/models/app_user.dart';
import '../../../shared/models/user_roles.dart';
import '../data/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import '../../../features/profile/data/user_repository.dart';

part 'auth_providers.g.dart';

@riverpod
FirebaseAuthService firebaseAuthService(Ref ref) {
  return FirebaseAuthService();
}

// ── Sign Up ───────────────────────────────────────────────────────────────────
@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  @override
  AsyncValue<AppUser?> build() => const AsyncValue.data(null);

  Future<AppUser?> signUp({
    required String name,
    required String email,
    required String password,
    required UserRole role,
  }) async {
    state = const AsyncValue.loading();

    // ✅ FIX 1: Read service BEFORE the async gap — never inside the closure
    final service = ref.read(firebaseAuthServiceProvider);

    final result = await AsyncValue.guard<AppUser?>(() async {
      return await service.signUp(
        name: name,
        email: email,
        password: password,
        role: role,
      );
    });

    // ✅ FIX 2: Check ref.mounted BEFORE setting state after the async gap
    if (ref.mounted) {
      state = result;
    }

    return result.asData?.value;
  }
}

// ── Sign In ───────────────────────────────────────────────────────────────────
@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  AsyncValue<AppUser?> build() => const AsyncValue.data(null);

  Future<AppUser?> signIn({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    // ✅ FIX 1: Read service BEFORE the async gap
    final service = ref.read(firebaseAuthServiceProvider);

    final result = await AsyncValue.guard<AppUser?>(() async {
      return await service.signIn(email: email, password: password);
    });

    // ✅ FIX 2: Check ref.mounted BEFORE setting state after the async gap
    if (ref.mounted) {
      state = result;
    }

    return result.asData?.value;
  }
}

// import 'package:flutter/gestures.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import '../../../shared/models/app_user.dart';
// import '../../../shared/models/user_roles.dart';
// import '../data/firebase_auth_service.dart';

// part 'auth_providers.g.dart';

// @riverpod
// FirebaseAuthService firebaseAuthService(Ref ref) {
//   return FirebaseAuthService();
// }

// @riverpod
// class SignUpNotifier extends _$SignUpNotifier {
//   @override
//   AsyncValue<void> build() => const AsyncValue.data(null);

//   Future<AppUser?> signUp({
//     required String name,
//     required String email,
//     required String password,
//     required UserRole role,
//   }) async {
//     state = const AsyncValue.loading();
//     AppUser? result;
//     state = await AsyncValue.guard(() async {
//       final service = ref.read(firebaseAuthServiceProvider);
//       result = await service.signUp(
//         name: name,
//         email: email,
//         password: password,
//         role: role,
//       );
//     });
//     if (state.hasError) return null;
//     return result;
//   }
// }

// @riverpod
// class LoginNotifier extends _$LoginNotifier {
//   @override
//   AsyncValue<void> build() => const AsyncValue.data(null);
//   Future<AppUser?> signIn({
//     required String email,
//     required String password,
//   }) async {
//     state = const AsyncValue.loading();
//     AppUser? result;
//     state = await AsyncValue.guard(() async {
//       final service = ref.read(firebaseAuthServiceProvider);
//       result = await service.signIn(email: email, password: password);
//     });

//     if (state.hasError) return null;
//     return result;
//   }
// }
