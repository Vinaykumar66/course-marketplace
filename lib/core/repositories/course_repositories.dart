import '../models/course_model.dart';

abstract class CourseRepositories {
  Future<void> saveCourse(CourseModel course);
  Future<List<CourseModel>> getAllCourses();
  Future<CourseModel?> getCourseById(String id);
  // Future<void> createCourse(CourseModel course);
  Future<void> updateCourse(String id, CourseModel course);
  Future<void> deleteCourse(String id);
  Stream<List<CourseModel>> getCoursesStream();
}
