import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
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

  Future<AppUser> signIn({
    required String email,
    required String password,
  }) async {
    final credential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (credential.user == null) {
      throw Exception('Sign-in returned no user');
    }
    final appUser = await _getUserFromFirestore(credential.user!.uid);
    if (appUser == null) {
      throw Exception('User profile not found');
    }
    return appUser;
  }

  Future<void> debugUserLookup(String uid) async {
    debugPrint('=== DEBUG USER LOOKUP ===');
    debugPrint('Looking up UID: "$uid"');

    // Check 1: Does the document exist at this exact path?
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .get();

    debugPrint('Collection: users');
    debugPrint('Document ID queried: $uid');
    debugPrint('doc.exists: ${doc.exists}');
    debugPrint('doc.data(): ${doc.data()}');

    // Check 2: List ALL documents in users collection
    final allDocs = await FirebaseFirestore.instance.collection('users').get();

    debugPrint('--- All document IDs in users collection ---');
    for (final d in allDocs.docs) {
      debugPrint('  Doc ID: "${d.id}"  |  uid field: "${d.data()['uid']}"');
    }
    debugPrint('=========================');
  }

  Future<AppUser?> _getUserFromFirestore(String uid) async {
    final doc = await _db.collection('users').doc(uid).get();
    // debugUserLookup(doc.id);
    if (!doc.exists) {
      return null;
    }
    return AppUserX.fromFirestore(uid, doc.data()!);
  }

  static String parseError(FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        return 'An account with this email already exists.'; // Most common error — shown when user tries to register twice
      case 'user-not-found':
        return 'No account found with this email.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-credential':
        return 'Invalid email or password.';
      case 'weak-password':
        return 'Password is too weak. Use at least 8 characters.'; // Firebase rejects passwords shorter than 6 chars
      case 'invalid-email':
        return 'Please enter a valid email address.'; // Should not appear if client-side validation passed, but just in case
      case 'network-request-failed':
        return 'Network error. Please check your connection.'; // Device is offline or Firebase is unreachable
      case 'too-many-requests':
        return 'Too many attempts. Please wait and try again.';
      default:
        return 'Sign-up failed. Please try again. (${e.code})'; // Catch-all — includes error code for debugging
    }
  }
}
