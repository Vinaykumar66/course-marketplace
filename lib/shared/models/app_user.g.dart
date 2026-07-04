// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
  uid: json['uid'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  photUrl: json['photUrl'] as String?,
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
);

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'email': instance.email,
  'role': _$UserRoleEnumMap[instance.role]!,
  'photUrl': instance.photUrl,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.instructor: 'instructor',
  UserRole.admin: 'admin',
};
