import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Home')),
      body: Center(
        child: TextButton(
          onPressed: () => FirebaseAuth.instance.signOut(),
          child: const Text("Press here to logout"),
        ),
      ),
    );
  }
}
