import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../shared/models/app_user.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;
  static const _col = 'users';

  Future<AppUser?> getUser(String uid) async {
    final doc = await _db.collection(_col).doc(uid).get();
    if (!doc.exists || doc.data() == null) {
      return null;
    }
    return AppUserX.fromFirestore(uid, doc.data()!);
  }

  Future<void> updateProfile({
    required String uid,
    required String name,
    String? photoUrl,
  }) async {
    final updates = <String, dynamic>{'name': name};
    if (photoUrl != null) {
      updates['photoUrl'] = photoUrl;
    }
    await _db.collection(_col).doc(uid).update(updates);
  }
}
