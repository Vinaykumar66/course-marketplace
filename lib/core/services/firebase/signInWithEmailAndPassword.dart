import 'package:cloud_firestore/cloud_firestore.dart';
import '../../repositories/course_repositories.dart';
import '../../models/course_model.dart';

class FirebaseCourseRepository implements CourseRepositories {
  final FirebaseFirestore _firestoreDb = FirebaseFirestore.instance;
  static const String _collectionName = 'courses';

  @override
  Future<void> saveCourse(CourseModel course) async {
    await _firestoreDb
        .collection(_collectionName)
        .doc(course.id)
        .set(course.toMap());
  }

  @override
  Future<List<CourseModel>> getAllCourses() async {
    final snapshot = await _firestoreDb.collection(_collectionName).get();
    return snapshot.docs.map((doc) => CourseModel.fromMap(doc.data())).toList();
  }

  @override
  Future<CourseModel?> getCourseById(String id) async {
    final doc = await _firestoreDb.collection(_collectionName).doc(id).get();
    if (doc.exists) {
      return CourseModel.fromMap(doc.data()!);
    }
    return null;
  }

  @override
  Future<void> updateCourse(CourseModel course) async {
    await _firestoreDb
        .collection(_collectionName)
        .doc(course.id)
        .update(course.toMap());
  }

  @override
  Future<void> deleteCourse(String id) async {
    await _firestoreDb.collection(_collectionName).doc(id).delete();
  }

  @override
  Stream<List<CourseModel>> getCoursesStream() {
    return _firestoreDb
        .collection(_collectionName)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => CourseModel.fromMap(doc.data()))
              .toList(),
        );
  }
}
