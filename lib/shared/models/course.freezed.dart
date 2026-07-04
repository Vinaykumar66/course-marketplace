// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Course {

 String get id; String get title; String get description; String get instructorId; double get price; String get category; String? get thumbnailUrl; CourseStatus get status; double get rating; int get studentCount;@TimestampConverter() DateTime get createdAt;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.instructorId, instructorId) || other.instructorId == instructorId)&&(identical(other.price, price) || other.price == price)&&(identical(other.category, category) || other.category == category)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,instructorId,price,category,thumbnailUrl,status,rating,studentCount,createdAt);

@override
String toString() {
  return 'Course(id: $id, title: $title, description: $description, instructorId: $instructorId, price: $price, category: $category, thumbnailUrl: $thumbnailUrl, status: $status, rating: $rating, studentCount: $studentCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String instructorId, double price, String category, String? thumbnailUrl, CourseStatus status, double rating, int studentCount,@TimestampConverter() DateTime createdAt
});




}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? instructorId = null,Object? price = null,Object? category = null,Object? thumbnailUrl = freezed,Object? status = null,Object? rating = null,Object? studentCount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,instructorId: null == instructorId ? _self.instructorId : instructorId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CourseStatus,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String instructorId,  double price,  String category,  String? thumbnailUrl,  CourseStatus status,  double rating,  int studentCount, @TimestampConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.instructorId,_that.price,_that.category,_that.thumbnailUrl,_that.status,_that.rating,_that.studentCount,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String instructorId,  double price,  String category,  String? thumbnailUrl,  CourseStatus status,  double rating,  int studentCount, @TimestampConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.title,_that.description,_that.instructorId,_that.price,_that.category,_that.thumbnailUrl,_that.status,_that.rating,_that.studentCount,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String instructorId,  double price,  String category,  String? thumbnailUrl,  CourseStatus status,  double rating,  int studentCount, @TimestampConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.instructorId,_that.price,_that.category,_that.thumbnailUrl,_that.status,_that.rating,_that.studentCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course implements Course {
  const _Course({required this.id, required this.title, required this.description, required this.instructorId, required this.price, required this.category, this.thumbnailUrl, required this.status, this.rating = 0.0, this.studentCount = 0, @TimestampConverter() required this.createdAt});
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String instructorId;
@override final  double price;
@override final  String category;
@override final  String? thumbnailUrl;
@override final  CourseStatus status;
@override@JsonKey() final  double rating;
@override@JsonKey() final  int studentCount;
@override@TimestampConverter() final  DateTime createdAt;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.instructorId, instructorId) || other.instructorId == instructorId)&&(identical(other.price, price) || other.price == price)&&(identical(other.category, category) || other.category == category)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,instructorId,price,category,thumbnailUrl,status,rating,studentCount,createdAt);

@override
String toString() {
  return 'Course(id: $id, title: $title, description: $description, instructorId: $instructorId, price: $price, category: $category, thumbnailUrl: $thumbnailUrl, status: $status, rating: $rating, studentCount: $studentCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String instructorId, double price, String category, String? thumbnailUrl, CourseStatus status, double rating, int studentCount,@TimestampConverter() DateTime createdAt
});




}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? instructorId = null,Object? price = null,Object? category = null,Object? thumbnailUrl = freezed,Object? status = null,Object? rating = null,Object? studentCount = null,Object? createdAt = null,}) {
  return _then(_Course(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,instructorId: null == instructorId ? _self.instructorId : instructorId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CourseStatus,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
