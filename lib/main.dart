import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'core/di/service_locator.dart';
import 'firebase_options.dart';
import 'core/router/app_router.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

*/