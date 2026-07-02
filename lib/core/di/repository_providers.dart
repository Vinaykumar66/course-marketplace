import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/auth_repositories.dart';
import '../repositories/course_repositories.dart';
import '../services/firebase/firebase_auth_repository.dart';
import '../services/firebase/firebase_course_repository.dart';

part 'repository_providers.g.dart';

@riverpod
AuthRepositories authRepositories(Ref ref) {
  return FirebaseAuthRepository();
}

@riverpod
CourseRepositories courseRepositories(Ref ref) {
  return FirebaseCourseRepository();
}
