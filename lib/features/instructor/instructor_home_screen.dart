import 'package:flutter/material.dart';

class InstructorHomeScreen extends StatelessWidget {
  const InstructorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instructor Home')),
      body: const Center(child: Text('Instructor home')),
    );
  }
}
