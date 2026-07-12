import '../models/user_model.dart';

abstract class AuthRepositories {
  Future<UserModel?> signInWithEmailAndPassword(String email, String password);
  Future<UserModel?> signUp(String name, String email, String password);
  //Day 8
  // Future<AppUser> signIn({
  //   required String email,
  //   required String password,
  // }) async {
  //   final credential = await _auth.signInWithEmailAndPassword(
  //     email: email,
  //     password,
  //     password,
  //   );
  //   //fetch full Firestore doc to get role, name etc.
  //   final user = await getUserByID(credential.user!.uid);
  //   //Safety check - throw if the Firestore doc is missing
  //   if (user == null) {
  //     throw Exception('User profile not found. Please contact support.');
  //   }
  //   return user;
  // }

  //Day 8
  Future<void> signOut();
  Stream<UserModel?> get authStateChanges;
  UserModel? get currentUser;
}
