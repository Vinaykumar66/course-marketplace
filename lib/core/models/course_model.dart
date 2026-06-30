class CourseModel {
  final String? id;
  final String? title;
  final String? description;
  final String? instructorId;
  final double? price;
  final String? thumbnailUrl;
  final DateTime? createdAt;

  const CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.instructorId,
    required this.thumbnailUrl,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': title,
      'description': description,
      'instructorId': instructorId,
      'price': price,
      'thumbnailUrl': thumbnailUrl,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      id: map['id'] as String?,
      title: map['name'] as String?,
      description: map['description'] as String?,
      instructorId: map['instructorId'] as String?,
      price: (map['price'] as num?)?.toDouble(),
      thumbnailUrl: map['thumbnailUrl'] as String?,
      createdAt: map['createdAt'] != null
          ? DateTime.parse(map['createdAt'] as String)
          : null,
    );
  }
}
