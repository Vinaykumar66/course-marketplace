import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // @riverpod annotation
import '../../../shared/models/course.dart';
import '../data/course_repository.dart';

part 'course_providers.g.dart';

@riverpod
CourseRepository courseRepository(Ref ref) => CourseRepository();

@riverpod
Stream<List<Course>> courseList(Ref ref) {
  return ref.watch(courseRepositoryProvider).getPublishedCourses();
}

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  String? build() => null;
  void select(String? category) => state = category;
}

@riverpod
AsyncValue<List<Course>> filteredCourseList(Ref ref) {
  final courses = ref.watch(courseListProvider);
  final category = ref.watch(selectedCategoryProvider);
  return courses.whenData((list) {
    if (category == null) {
      return list;
    }
    return list.where((c) => c.category == category).toList();
  });
}
