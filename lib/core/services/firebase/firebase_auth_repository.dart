import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../repositories/auth_repositories.dart';
import '../../models/user_model.dart';

class FirebaseAuthRepository implements AuthRepositories {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestoredb = FirebaseFirestore.instance;

  @override
  Future<UserModel?> signInWithEmailAndPassword(
    //refers method declared in auth_repositories.dart
    String email,
    String password,
  ) async {
    final credential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (credential.user == null) {
      return null;
    }
    return _getUserFromFirestore(credential.user!.uid);
  }

  @override
  Future<UserModel?> signUp(String email, String password, String name) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (credential.user == null) {
      return null;
    }
    final user = UserModel(id: credential.user!.uid, email: email, name: name);
    await _firestoredb.collection('users').doc(user.id).set(user.toMap());
    return user;
  }

  @override
  Future<void> signOut() => _auth.signOut();

  @override
  Stream<UserModel?> get authStateChanges async* {
    await for (final user in _auth.authStateChanges()) {
      if (user == null) {
        yield null;
      } else {
        yield await _getUserFromFirestore(user.uid);
      }
    }
  }

  @override
  UserModel? get currentUser {
    final user = _auth.currentUser;
    if (user == null) {
      return null;
    }
    return UserModel(id: user.uid, email: user.email, name: user.displayName);
  }

  Future<UserModel?> _getUserFromFirestore(String uid) async {
    final doc = await _firestoredb.collection('users').doc(uid).get();
    if (!doc.exists) {
      return null;
    }
    return UserModel.fromMap(doc.data()!);
  }
}
