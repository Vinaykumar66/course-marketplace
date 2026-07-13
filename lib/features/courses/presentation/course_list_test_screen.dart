import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_text_styles.dart';
import '../application/course_providers.dart';

// ConsumerWidget: reads courseListProvider
class CourseListTestScreen extends ConsumerWidget {
  const CourseListTestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coursesAsync = ref.watch(
      courseListProvider,
    ); // Watches the StreamProvider — rebuilds on each Firestore update
    return Scaffold(
      appBar: AppBar(title: const Text('Course List (Test)')),
      body: coursesAsync.when(
        // .when() handles loading, error, and data states
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ), // Spinner while stream hasn't emitted yet
        error: (e, _) => Center(
          child: Text('Error: $e'),
        ), // Prints error message — useful for debugging Firestore rules/index issues
        data: (courses) => ListView.separated(
          itemCount: courses.length, // Number of published courses returned
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, i) {
            final course = courses[i]; // One course per list tile
            return ListTile(
              title: Text(course.title, style: AppTextStyles.h3),
              subtitle: Text(
                '${course.category} • ${course.price}',
              ), // Category slug and price
              trailing: Text(
                '${course.rating}★',
                style: AppTextStyles.bodySmall,
              ), // Rating with star symbol
            );
          },
        ),
      ),
    );
  }
}
