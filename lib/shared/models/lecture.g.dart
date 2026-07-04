// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lecture _$LectureFromJson(Map<String, dynamic> json) => _Lecture(
  id: json['id'] as String,
  sectionId: json['sectionId'] as String,
  courseId: json['courseId'] as String,
  title: json['title'] as String,
  videoUrl: json['videoUrl'] as String,
  durationSeconds: (json['durationSeconds'] as num).toInt(),
  order: (json['order'] as num).toInt(),
  isPreview: json['isPreview'] as bool? ?? false,
);

Map<String, dynamic> _$LectureToJson(_Lecture instance) => <String, dynamic>{
  'id': instance.id,
  'sectionId': instance.sectionId,
  'courseId': instance.courseId,
  'title': instance.title,
  'videoUrl': instance.videoUrl,
  'durationSeconds': instance.durationSeconds,
  'order': instance.order,
  'isPreview': instance.isPreview,
};
