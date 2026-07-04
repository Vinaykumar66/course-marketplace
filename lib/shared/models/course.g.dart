// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  instructorId: json['instructorId'] as String,
  price: (json['price'] as num).toDouble(),
  category: json['category'] as String,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  status: $enumDecode(_$CourseStatusEnumMap, json['status']),
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  studentCount: (json['studentCount'] as num?)?.toInt() ?? 0,
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'instructorId': instance.instructorId,
  'price': instance.price,
  'category': instance.category,
  'thumbnailUrl': instance.thumbnailUrl,
  'status': _$CourseStatusEnumMap[instance.status]!,
  'rating': instance.rating,
  'studentCount': instance.studentCount,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};

const _$CourseStatusEnumMap = {
  CourseStatus.draft: 'draft',
  CourseStatus.published: 'published',
  CourseStatus.archived: 'archived',
};
