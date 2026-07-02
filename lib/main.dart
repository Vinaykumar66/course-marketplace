import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'core/di/service_locator.dart';
import 'firebase_options.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // ServiceLocator().setupFirebase(); // Initialize the service locator
  //ServiceLocator().setupSupabase(); // Initialize the service locator
  //ServiceLocator().setupMongoDB(); // Initialize the service locator

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Course Marketplace',
      theme: AppTheme.light, // Use the custom light theme defined in AppTheme
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      // home: const Scaffold(
      //   body: Center(child: Text('Course Marketplace — Day 2')),
      // ),
    );
  }
}
  

/* refresh dependencies safely

flutter pub get
cd ios && pod install && cd ..

**************
Push to Git hub

Step 1
cd /Users/vinaykumar/StudioProjects/course_marketplace
git status

Step 2
git add .

Step 3
git commit -m "Day 3: ...."

Step 4
git push

*/