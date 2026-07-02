import '../models/user_model.dart';

abstract class AuthRepositories {
  Future<UserModel?> signInWithEmailAndPassword(String email, String password);
  Future<UserModel?> signUp(String name, String email, String password);
  Future<void> signOut();
  Stream<UserModel?> get authStateChanges;
  UserModel? get currentUser;
}
