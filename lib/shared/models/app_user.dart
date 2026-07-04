import 'package:freezed_annotation/freezed_annotation.dart';
import 'converters/timestamp_converter.dart';
import 'user_roles.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String name,
    required String email,
    required UserRole role,
    String? photUrl,
    @TimestampConverter() required DateTime createdAt,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

extension AppUserX on AppUser {
  static AppUser fromFirestore(String uid, Map<String, dynamic> data) {
    return AppUser.fromJson({
      ...data,
      'uid': uid,
      'role': data['role'] ?? 'student',
    });
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json['role'] = role.value;
    json.remove('uid');
    return json;
  }
}
