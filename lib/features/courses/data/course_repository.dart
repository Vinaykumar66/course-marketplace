import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../shared/models/course.dart';
import '../../../shared/models/course_status.dart';

class CourseRepository {
  final _db = FirebaseFirestore.instance;
  static const _col = 'courses';
  Stream<List<Course>> getPublishedCourses() {
    return _db
        .collection(_col)
        .where('status', isEqualTo: 'published')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => CourseX.fromFirestore(doc.id, doc.data()))
              .toList(),
        );
  }

  Future<Course?> getCourseById(String courseId) async {
    final doc = await _db.collection(_col).doc(courseId).get();

    if (!doc.exists) {
      return null;
    }
    return CourseX.fromFirestore(doc.id, doc.data()!);
  }

  Stream<List<Course>> getCoursesByCategory(String category) {
    return _db
        .collection(_col)
        .where('status', isEqualTo: 'published')
        .where('category', isEqualTo: category)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => CourseX.fromFirestore(doc.id, doc.data()))
              .toList(),
        );
  }

  Stream<List<Course>> getCoursesByInstructor(String instructorId) {
    return _db
        .collection(_col)
        .where('instructorId', isEqualTo: instructorId)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => CourseX.fromFirestore(doc.id, doc.data()))
              .toList(),
        );
  }
}
