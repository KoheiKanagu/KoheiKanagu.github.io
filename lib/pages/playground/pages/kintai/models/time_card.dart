import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koheikanagu_github_io/util/converter/timestamp_support.dart';

part 'time_card.freezed.dart';

part 'time_card.g.dart';

@freezed
abstract class TimeCard with _$TimeCard {
  @DatetimeTimestampConverter()
  const factory TimeCard({
    @Default('') String uid,
    DateTime? today,
    DateTime? punchInTime,
    DateTime? punchOutTime,
  }) = _TimeCard;

  const factory TimeCard.notSignedIn() = _NotSignedIn;

  const factory TimeCard.undefined() = _Undefined;

  const factory TimeCard.error() = _Error;

  factory TimeCard.fromJson(Map<String, dynamic> json) =>
      _$TimeCardFromJson(json);

  static const collectionPath = 'timecards';
}
