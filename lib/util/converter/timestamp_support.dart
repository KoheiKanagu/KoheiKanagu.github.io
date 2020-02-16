import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampField {
  static const createdAt = 'createdAt';
  static const updatedAt = 'updatedAt';
}

DateTime timestampToDateTime(Timestamp timestamp) => timestamp?.toDate();

Timestamp dateTimeToTimestamp(DateTime dateTime) =>
    dateTime == null ? null : Timestamp.fromDate(dateTime);

Map<String, dynamic> updateTimestamps(
  Map<String, dynamic> json,
) =>
    <String, dynamic>{...json}
      ..putIfAbsent(TimestampField.createdAt, FieldValue.serverTimestamp)
      ..[TimestampField.updatedAt] = FieldValue.serverTimestamp();

const jsonKeyTimestamp = JsonKey(
  fromJson: timestampToDateTime,
  toJson: dateTimeToTimestamp,
);

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  @override
  DateTime fromJson(Timestamp json) => timestampToDateTime(json);

  @override
  Timestamp toJson(DateTime object) => dateTimeToTimestamp(object);
}

extension TimestampExtension on Timestamp {
  String toIso8601String() => toDate().toIso8601String();
}
