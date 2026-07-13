import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            // Tap to go to profile screen
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () => context.go('/profile'),
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () => FirebaseAuth.instance.signOut(),
          child: const Text("Press here to logout"),
        ),
      ),
    );
  }
}
