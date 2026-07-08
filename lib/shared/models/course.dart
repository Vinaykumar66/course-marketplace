import 'package:freezed_annotation/freezed_annotation.dart';
import 'converters/timestamp_converter.dart';
import 'course_status.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
abstract class Course with _$Course {
  const factory Course({
    required String id,
    required String title,
    required String description,
    required String instructorId,
    required double price,
    required String category,
    String? thumbnailUrl,
    required CourseStatus status,
    @Default(0.0) double rating,
    @Default(0) int studentCount,
    @TimestampConverter() required DateTime createdAt,
  }) = _Course;
  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

extension CourseX on Course {
  static Course fromFirestore(String id, Map<String, dynamic> data) {
    return Course.fromJson({
      ...data,
      'id': id,
      'status': data['status'] ?? 'draft',
      'price': (data['price'] ?? 0).toDouble(),
    });
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json['status'] = status.value;
    json.remove('id');
    return json;
  }

  String get formattedPrice {
    if (price == 0) return 'Free';
    return '₹${price.toStringAsFixed(0)}';
  }
}
