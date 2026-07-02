import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/auth/login_screen.dart';
import '../../features/student/student_home_screen.dart';
import '../../features/instructor/instructor_home_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),

      GoRoute(
        path: '/student-home',
        builder: (context, state) => const StudentHomeScreen(),
      ),

      GoRoute(
        path: '/instructor-home',
        builder: (context, state) => const InstructorHomeScreen(),
      ),
    ],
  );
}
