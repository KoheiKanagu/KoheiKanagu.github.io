// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeCard _$_$_TimeCardFromJson(Map<String, dynamic> json) {
  return _$_TimeCard(
    uid: json['uid'] as String,
    today: timestampToDateTime(json['today'] as Timestamp),
    punchInTime: timestampToDateTime(json['punchInTime'] as Timestamp),
    punchOutTime: timestampToDateTime(json['punchOutTime'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_TimeCardToJson(_$_TimeCard instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'today': dateTimeToTimestamp(instance.today),
      'punchInTime': dateTimeToTimestamp(instance.punchInTime),
      'punchOutTime': dateTimeToTimestamp(instance.punchOutTime),
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
