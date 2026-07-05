import 'package:course_marketplace/features/preview/style_preview_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/auth/login_screen.dart';
import '../../features/student/student_home_screen.dart';
import '../../features/instructor/instructor_home_screen.dart';
import '../../features/auth/presentation/signup_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/login',

    // initialLocation: '/preview', // Temporary route — delete this after Day 4
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/student-home',
        builder: (context, state) => const StudentHomeScreen(),
      ),

      GoRoute(
        path: '/instructor-home',
        builder: (context, state) => const InstructorHomeScreen(),
      ),
      GoRoute(
        path: '/preview', // Temporary route — delete this after Day 4
        builder: (context, state) => const StylePreviewScreen(),
      ),
    ],
  );
}
