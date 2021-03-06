// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeCard _$_$_TimeCardFromJson(Map<String, dynamic> json) {
  return _$_TimeCard(
    uid: json['uid'] as String? ?? '',
    today: const DatetimeTimestampConverter()
        .fromJson(json['today'] as Timestamp?),
    punchInTime: const DatetimeTimestampConverter()
        .fromJson(json['punchInTime'] as Timestamp?),
    punchOutTime: const DatetimeTimestampConverter()
        .fromJson(json['punchOutTime'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_TimeCardToJson(_$_TimeCard instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'today': const DatetimeTimestampConverter().toJson(instance.today),
      'punchInTime':
          const DatetimeTimestampConverter().toJson(instance.punchInTime),
      'punchOutTime':
          const DatetimeTimestampConverter().toJson(instance.punchOutTime),
    };

_$_NotSignedIn _$_$_NotSignedInFromJson(Map<String, dynamic> json) {
  return _$_NotSignedIn();
}

Map<String, dynamic> _$_$_NotSignedInToJson(_$_NotSignedIn instance) =>
    <String, dynamic>{};

_$_Undefined _$_$_UndefinedFromJson(Map<String, dynamic> json) {
  return _$_Undefined();
}

Map<String, dynamic> _$_$_UndefinedToJson(_$_Undefined instance) =>
    <String, dynamic>{};

_$_Error _$_$_ErrorFromJson(Map<String, dynamic> json) {
  return _$_Error();
}

Map<String, dynamic> _$_$_ErrorToJson(_$_Error instance) => <String, dynamic>{};
