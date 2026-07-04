import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();
  //DateTime is a data type that can be used in JsonConverter 'T' parameter and dynamic is a type of value stored in JSON 'S' parameter.
  @override
  DateTime fromJson(dynamic date) {
    if (date is Timestamp) {
      return date.toDate();
    }
    if (date is String) {
      return DateTime.parse(date);
    }
    return DateTime.now();
  }

  @override
  dynamic toJson(DateTime timestamp) {
    return Timestamp.fromDate(timestamp);
  }
}
