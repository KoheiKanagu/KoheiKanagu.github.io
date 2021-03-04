import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampField {
  static const createdAt = 'createdAt';
  static const updatedAt = 'updatedAt';
}

Map<String, dynamic> updateTimestamps(
  Map<String, dynamic> json,
) =>
    <String, dynamic>{...json}
      ..putIfAbsent(TimestampField.createdAt, FieldValue.serverTimestamp)
      ..[TimestampField.updatedAt] = FieldValue.serverTimestamp();

class DatetimeTimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const DatetimeTimestampConverter();

  @override
  DateTime fromJson(Timestamp json) => json?.toDate();

  @override
  Timestamp toJson(DateTime json) =>
      json == null ? null : Timestamp.fromDate(json);
}
