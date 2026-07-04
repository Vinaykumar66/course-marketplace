import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture.freezed.dart';
part 'lecture.g.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    required String id,
    required String sectionId,
    required String courseId,
    required String title,
    required String videoUrl,
    required int durationSeconds,
    required int order,
    @Default(false) bool isPreview,
  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) =>
      _$LectureFromJson(json);
}

extension LectureX on Lecture {
  static Lecture fromFirestore(String id, Map<String, dynamic> data) {
    return Lecture.fromJson({...data, 'id': id});
  }

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json.remove('id');
    return json;
  }

  String get formattedDuration {
    final m = durationSeconds ~/ 60;
    final s = durationSeconds % 60;
    return '${m}m ${s.toString().padLeft(2, '0')}s';
  }
}
