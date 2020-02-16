import 'package:KoheiKanagu_github_io/util/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_card.freezed.dart';

part 'time_card.g.dart';

@freezed
abstract class TimeCard with _$TimeCard {
  const factory TimeCard({
    @required
        String uid,
    @required
    @JsonKey(
      fromJson: TimestampConverter.fromTimestamp,
      toJson: TimestampConverter.toTimestamp,
    )
        Timestamp today,
    @JsonKey(
      fromJson: TimestampConverter.fromTimestamp,
      toJson: TimestampConverter.toTimestamp,
    )
        Timestamp punchInTime,
    @JsonKey(
      fromJson: TimestampConverter.fromTimestamp,
      toJson: TimestampConverter.toTimestamp,
    )
        Timestamp punchOutTime,
  }) = _TimeCard;

  const factory TimeCard.notSignedIn() = _NotSignedIn;

  const factory TimeCard.undefined() = _Undefined;

  const factory TimeCard.error() = _Error;

  factory TimeCard.fromJson(Map<String, dynamic> json) =>
      _$TimeCardFromJson(json);

  static const collectionPath = 'timecards';
}
