import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../shared/models/app_user.dart';
import '../../../shared/models/user_roles.dart';
import '../data/firebase_auth_service.dart';

part 'auth_providers.g.dart';

@riverpod
FirebaseAuthService firebaseAuthService(Ref ref) {
  return FirebaseAuthService();
}

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<AppUser?> signUp({
    required String name,
    required String email,
    required String password,
    required UserRole role,
  }) async {
    state = const AsyncValue.loading();
    AppUser? result;
    state = await AsyncValue.guard(() async {
      final service = ref.read(firebaseAuthServiceProvider);
      result = await service.signUp(
        name: name,
        email: email,
        password: password,
        role: role,
      );
    });
    if (state.hasError) return null;
    return result;
  }
}
