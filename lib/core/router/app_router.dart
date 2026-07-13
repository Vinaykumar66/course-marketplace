import 'package:course_marketplace/features/preview/style_preview_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/student/student_home_screen.dart';
import '../../features/instructor/instructor_home_screen.dart';
import '../../features/auth/presentation/signup_screen.dart';
import '../../features/auth/presentation/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import '../../../features/auth/application/auth_providers.dart';
import '../../../features/profile/data/user_repository.dart';
import '../../shared/models/user_roles.dart';
import 'go_router_refresh_stream.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/courses/presentation/course_list_test_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final authState = ref.watch(firebaseAuthStateProvider);

  return GoRouter(
    initialLocation: '/courses-test', //'/login',

    redirect: (context, state) async {
      final user = fb.FirebaseAuth.instance.currentUser;
      final isLoggedIn = user != null;
      final isAuthRoute =
          state.matchedLocation == '/login' ||
          state.matchedLocation == '/signup';

      if (!isLoggedIn && !isAuthRoute) {
        final appUser = await UserRepository().getUser(user!.uid);
        if (appUser == null) return '/login';
        return appUser.role == UserRole.instructor
            ? '/instructor-home'
            : '/student-home';
      }
      return null;
    },

    refreshListenable: GoRouterRefreshStream(
      fb.FirebaseAuth.instance.authStateChanges(),
    ),

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
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/courses-test',
        builder: (context, state) => const CourseListTestScreen(),
      ),
    ],
  );
}
