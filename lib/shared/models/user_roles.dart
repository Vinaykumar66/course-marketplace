enum UserRole { student, instructor, admin }

extension UserRoleExtension on UserRole {
  String get value {
    switch (this) {
      case UserRole.student:
        return 'student';
      case UserRole.instructor:
        return 'instructor';
      case UserRole.admin:
        return 'admin';
    }
  }

  static UserRole fromString(String value) {
    switch (value) {
      case 'instructor':
        return UserRole.instructor;
      case 'admin':
        return UserRole.admin;
      default:
        return UserRole.student;
    }
  }
}
