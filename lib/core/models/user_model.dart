class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? profileImage;
  final String? role;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.role = 'Student',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profileImage': profileImage,
      'role': role,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String?,
      name: map['name'] as String?,
      email: map['email'] as String?,
      profileImage: map['profileImage'] as String?,
      role: map['role'] as String? ?? 'Student',
    );
  }
}
