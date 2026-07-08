import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../shared/models/app_user.dart';
import '../../../shared/models/user_roles.dart';

class FirebaseAuthService {
  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  Future<AppUser> signUp({
    required String name,
    required String email,
    required String password,
    required UserRole role,
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final appUser = AppUser(
      uid: credential.user!.uid,
      name: name,
      email: email,
      role: role,
      createdAt: DateTime.now(),
    );
    await _db.collection('users').doc(appUser.uid).set(appUser.toFirestore());
    return appUser;
  }

  static String parseError(FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        return 'An account with this email already exists.'; // Most common error — shown when user tries to register twice
      case 'weak-password':
        return 'Password is too weak. Use at least 8 characters.'; // Firebase rejects passwords shorter than 6 chars
      case 'invalid-email':
        return 'Please enter a valid email address.'; // Should not appear if client-side validation passed, but just in case
      case 'network-request-failed':
        return 'Network error. Please check your connection.'; // Device is offline or Firebase is unreachable
      default:
        return 'Sign-up failed. Please try again. (${e.code})'; // Catch-all — includes error code for debugging
    }
  }
}
