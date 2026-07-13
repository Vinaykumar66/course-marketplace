import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../shared/models/app_user.dart';
import '../data/user_repository.dart';

part 'profile_providers.g.dart';

@riverpod
UserRepository userRepository(Ref ref) => UserRepository();

@riverpod
Future<AppUser?> currentUserProfile(Ref ref) async {
  final uid = FirebaseAuth.instance.currentUser?.uid;
  if (uid == null) {
    return null;
  }
  return ref.read(userRepositoryProvider).getUser(uid);
}
