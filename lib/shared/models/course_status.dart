enum CourseStatus { draft, published, archived }

extension CourseStatusExtension on CourseStatus {
  String get value {
    switch (this) {
      case CourseStatus.draft:
        return 'draft';
      case CourseStatus.published:
        return 'published';
      case CourseStatus.archived:
        return 'archived';
    }
  }

  static CourseStatus fromString(String value) {
    switch (value) {
      case 'published':
        return CourseStatus.published;
      case 'archived':
        return CourseStatus.archived;
      default:
        return CourseStatus.draft;
    }
  }
}
