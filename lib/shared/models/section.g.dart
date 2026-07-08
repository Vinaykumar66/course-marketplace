// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Section _$SectionFromJson(Map<String, dynamic> json) => _Section(
  id: json['id'] as String,
  courseId: json['courseId'] as String,
  title: json['title'] as String,
  order: (json['order'] as num).toInt(),
);

Map<String, dynamic> _$SectionToJson(_Section instance) => <String, dynamic>{
  'id': instance.id,
  'courseId': instance.courseId,
  'title': instance.title,
  'order': instance.order,
};
