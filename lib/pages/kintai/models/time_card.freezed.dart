// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'time_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

TimeCard _$TimeCardFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _TimeCard.fromJson(json);
    case 'notSignedIn':
      return _NotSignedIn.fromJson(json);
    case 'undefined':
      return _Undefined.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw FallThroughError();
  }
}

mixin _$TimeCard {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    @required Result notSignedIn(),
    @required Result undefined(),
    @required Result error(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    Result notSignedIn(),
    Result undefined(),
    Result error(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TimeCard value), {
    @required Result notSignedIn(_NotSignedIn value),
    @required Result undefined(_Undefined value),
    @required Result error(_Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TimeCard value), {
    Result notSignedIn(_NotSignedIn value),
    Result undefined(_Undefined value),
    Result error(_Error value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_TimeCard with DiagnosticableTreeMixin implements _TimeCard {
  const _$_TimeCard(
      {@required this.uid,
      @required @jsonKeyTimestamp this.today,
      @jsonKeyTimestamp this.punchInTime,
      @jsonKeyTimestamp this.punchOutTime})
      : assert(uid != null),
        assert(today != null);

  factory _$_TimeCard.fromJson(Map<String, dynamic> json) =>
      _$_$_TimeCardFromJson(json);

  @override
  final String uid;
  @override
  @jsonKeyTimestamp
  final DateTime today;
  @override
  @jsonKeyTimestamp
  final DateTime punchInTime;
  @override
  @jsonKeyTimestamp
  final DateTime punchOutTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeCard(uid: $uid, today: $today, punchInTime: $punchInTime, punchOutTime: $punchOutTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeCard'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('today', today))
      ..add(DiagnosticsProperty('punchInTime', punchInTime))
      ..add(DiagnosticsProperty('punchOutTime', punchOutTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeCard &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.today, today) ||
                const DeepCollectionEquality().equals(other.today, today)) &&
            (identical(other.punchInTime, punchInTime) ||
                const DeepCollectionEquality()
                    .equals(other.punchInTime, punchInTime)) &&
            (identical(other.punchOutTime, punchOutTime) ||
                const DeepCollectionEquality()
                    .equals(other.punchOutTime, punchOutTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      uid.hashCode ^
      today.hashCode ^
      punchInTime.hashCode ^
      punchOutTime.hashCode;

  @override
  _$_TimeCard copyWith({
    Object uid = freezed,
    Object today = freezed,
    Object punchInTime = freezed,
    Object punchOutTime = freezed,
  }) {
    assert(uid != null);
    assert(today != null);
    return _$_TimeCard(
      uid: uid == freezed ? this.uid : uid as String,
      today: today == freezed ? this.today : today as DateTime,
      punchInTime:
          punchInTime == freezed ? this.punchInTime : punchInTime as DateTime,
      punchOutTime: punchOutTime == freezed
          ? this.punchOutTime
          : punchOutTime as DateTime,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    @required Result notSignedIn(),
    @required Result undefined(),
    @required Result error(),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return $default(uid, today, punchInTime, punchOutTime);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    Result notSignedIn(),
    Result undefined(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(uid, today, punchInTime, punchOutTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TimeCard value), {
    @required Result notSignedIn(_NotSignedIn value),
    @required Result undefined(_Undefined value),
    @required Result error(_Error value),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TimeCard value), {
    Result notSignedIn(_NotSignedIn value),
    Result undefined(_Undefined value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimeCardToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _TimeCard implements TimeCard {
  const factory _TimeCard(
      {@required String uid,
      @required @jsonKeyTimestamp DateTime today,
      @jsonKeyTimestamp DateTime punchInTime,
      @jsonKeyTimestamp DateTime punchOutTime}) = _$_TimeCard;

  factory _TimeCard.fromJson(Map<String, dynamic> json) = _$_TimeCard.fromJson;

  String get uid;
  @jsonKeyTimestamp
  DateTime get today;
  @jsonKeyTimestamp
  DateTime get punchInTime;
  @jsonKeyTimestamp
  DateTime get punchOutTime;

  _TimeCard copyWith(
      {String uid,
      @jsonKeyTimestamp DateTime today,
      @jsonKeyTimestamp DateTime punchInTime,
      @jsonKeyTimestamp DateTime punchOutTime});
}

@JsonSerializable()
class _$_NotSignedIn with DiagnosticableTreeMixin implements _NotSignedIn {
  const _$_NotSignedIn();

  factory _$_NotSignedIn.fromJson(Map<String, dynamic> json) =>
      _$_$_NotSignedInFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeCard.notSignedIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TimeCard.notSignedIn'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    @required Result notSignedIn(),
    @required Result undefined(),
    @required Result error(),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return notSignedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    Result notSignedIn(),
    Result undefined(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notSignedIn != null) {
      return notSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TimeCard value), {
    @required Result notSignedIn(_NotSignedIn value),
    @required Result undefined(_Undefined value),
    @required Result error(_Error value),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TimeCard value), {
    Result notSignedIn(_NotSignedIn value),
    Result undefined(_Undefined value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notSignedIn != null) {
      return notSignedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotSignedInToJson(this)..['runtimeType'] = 'notSignedIn';
  }
}

abstract class _NotSignedIn implements TimeCard {
  const factory _NotSignedIn() = _$_NotSignedIn;

  factory _NotSignedIn.fromJson(Map<String, dynamic> json) =
      _$_NotSignedIn.fromJson;
}

@JsonSerializable()
class _$_Undefined with DiagnosticableTreeMixin implements _Undefined {
  const _$_Undefined();

  factory _$_Undefined.fromJson(Map<String, dynamic> json) =>
      _$_$_UndefinedFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeCard.undefined()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TimeCard.undefined'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Undefined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    @required Result notSignedIn(),
    @required Result undefined(),
    @required Result error(),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return undefined();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    Result notSignedIn(),
    Result undefined(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undefined != null) {
      return undefined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TimeCard value), {
    @required Result notSignedIn(_NotSignedIn value),
    @required Result undefined(_Undefined value),
    @required Result error(_Error value),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TimeCard value), {
    Result notSignedIn(_NotSignedIn value),
    Result undefined(_Undefined value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UndefinedToJson(this)..['runtimeType'] = 'undefined';
  }
}

abstract class _Undefined implements TimeCard {
  const factory _Undefined() = _$_Undefined;

  factory _Undefined.fromJson(Map<String, dynamic> json) =
      _$_Undefined.fromJson;
}

@JsonSerializable()
class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error();

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeCard.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TimeCard.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    @required Result notSignedIn(),
    @required Result undefined(),
    @required Result error(),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        @required String uid,
        @required @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    Result notSignedIn(),
    Result undefined(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_TimeCard value), {
    @required Result notSignedIn(_NotSignedIn value),
    @required Result undefined(_Undefined value),
    @required Result error(_Error value),
  }) {
    assert($default != null);
    assert(notSignedIn != null);
    assert(undefined != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_TimeCard value), {
    Result notSignedIn(_NotSignedIn value),
    Result undefined(_Undefined value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class _Error implements TimeCard {
  const factory _Error() = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;
}
