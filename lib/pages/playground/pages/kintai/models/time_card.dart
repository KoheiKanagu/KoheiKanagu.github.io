import 'package:KoheiKanagu_github_io/util/converter/timestamp_support.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_card.freezed.dart';

part 'time_card.g.dart';

@freezed
abstract class TimeCard with _$TimeCard {
  const factory TimeCard({
    @required String uid,
    @required @jsonKeyTimestamp DateTime today,
    @jsonKeyTimestamp DateTime punchInTime,
    @jsonKeyTimestamp DateTime punchOutTime,
  }) = _TimeCard;

  const factory TimeCard.notSignedIn() = _NotSignedIn;

  const factory TimeCard.undefined() = _Undefined;

  const factory TimeCard.error() = _Error;

  factory TimeCard.fromJson(Map<String, dynamic> json) =>
      _$TimeCardFromJson(json);

  static const collectionPath = 'timecards';
}
