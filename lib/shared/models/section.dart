import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
abstract class Section with _$Section {
  const factory Section({
    required String id,
    required String courseId,
    required String title,
    required int order,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

extension SectionX on Section {
  static Section fromFirestore(String id, Map<String, dynamic> data) =>
      Section.fromJson({...data, 'id': id});

  Map<String, dynamic> toFirestore() {
    final json = toJson();
    json.remove('id');
    return json;
  }
}
