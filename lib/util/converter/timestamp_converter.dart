import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, Timestamp> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Timestamp json) => fromTimestamp(json);

  static Timestamp fromTimestamp(Timestamp timestamp) => timestamp;

  @override
  Timestamp toJson(Timestamp object) => toTimestamp(object);

  static Timestamp toTimestamp(Timestamp timestamp) => timestamp;
}

extension TimestampExtension on Timestamp {
  String toIso8601String() => toDate().toIso8601String();
}
