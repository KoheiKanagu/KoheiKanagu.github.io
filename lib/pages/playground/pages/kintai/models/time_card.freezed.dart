// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'time_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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

class _$TimeCardTearOff {
  const _$TimeCardTearOff();

// ignore: unused_element
  _TimeCard call(
      {@required String uid,
      @required @jsonKeyTimestamp DateTime today,
      @jsonKeyTimestamp DateTime punchInTime,
      @jsonKeyTimestamp DateTime punchOutTime}) {
    return _TimeCard(
      uid: uid,
      today: today,
      punchInTime: punchInTime,
      punchOutTime: punchOutTime,
    );
  }

// ignore: unused_element
  _NotSignedIn notSignedIn() {
    return const _NotSignedIn();
  }

// ignore: unused_element
  _Undefined undefined() {
    return const _Undefined();
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

// ignore: unused_element
const $TimeCard = _$TimeCardTearOff();

mixin _$TimeCard {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String uid,
        @jsonKeyTimestamp DateTime today,
        @jsonKeyTimestamp DateTime punchInTime,
        @jsonKeyTimestamp DateTime punchOutTime), {
    @required Result notSignedIn(),
    @required Result undefined(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String uid,
        @jsonKeyTimestamp DateTime today,
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

abstract class $TimeCardCopyWith<$Res> {
  factory $TimeCardCopyWith(TimeCard value, $Res Function(TimeCard) then) =
      _$TimeCardCopyWithImpl<$Res>;
}

class _$TimeCardCopyWithImpl<$Res> implements $TimeCardCopyWith<$Res> {
  _$TimeCardCopyWithImpl(this._value, this._then);

  final TimeCard _value;
  // ignore: unused_field
  final $Res Function(TimeCard) _then;
}

abstract class _$TimeCardCopyWith<$Res> {
  factory _$TimeCardCopyWith(_TimeCard value, $Res Function(_TimeCard) then) =
      __$TimeCardCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      @jsonKeyTimestamp DateTime today,
      @jsonKeyTimestamp DateTime punchInTime,
      @jsonKeyTimestamp DateTime punchOutTime});
}

class __$TimeCardCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$TimeCardCopyWith<$Res> {
  __$TimeCardCopyWithImpl(_TimeCard _value, $Res Function(_TimeCard) _then)
      : super(_value, (v) => _then(v as _TimeCard));

  @override
  _TimeCard get _value => super._value as _TimeCard;

  @override
  $Res call({
    Object uid = freezed,
    Object today = freezed,
    Object punchInTime = freezed,
    Object punchOutTime = freezed,
  }) {
    return _then(_TimeCard(
      uid: uid == freezed ? _value.uid : uid as String,
      today: today == freezed ? _value.today : today as DateTime,
      punchInTime:
          punchInTime == freezed ? _value.punchInTime : punchInTime as DateTime,
      punchOutTime: punchOutTime == freezed
          ? _value.punchOutTime
          : punchOutTime as DateTime,
    ));
  }
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
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(today) ^
      const DeepCollectionEquality().hash(punchInTime) ^
      const DeepCollectionEquality().hash(punchOutTime);

  @override
  _$TimeCardCopyWith<_TimeCard> get copyWith =>
      __$TimeCardCopyWithImpl<_TimeCard>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String uid,
        @jsonKeyTimestamp DateTime today,
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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
  _$TimeCardCopyWith<_TimeCard> get copyWith;
}

abstract class _$NotSignedInCopyWith<$Res> {
  factory _$NotSignedInCopyWith(
          _NotSignedIn value, $Res Function(_NotSignedIn) then) =
      __$NotSignedInCopyWithImpl<$Res>;
}

class __$NotSignedInCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$NotSignedInCopyWith<$Res> {
  __$NotSignedInCopyWithImpl(
      _NotSignedIn _value, $Res Function(_NotSignedIn) _then)
      : super(_value, (v) => _then(v as _NotSignedIn));

  @override
  _NotSignedIn get _value => super._value as _NotSignedIn;
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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

abstract class _$UndefinedCopyWith<$Res> {
  factory _$UndefinedCopyWith(
          _Undefined value, $Res Function(_Undefined) then) =
      __$UndefinedCopyWithImpl<$Res>;
}

class __$UndefinedCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$UndefinedCopyWith<$Res> {
  __$UndefinedCopyWithImpl(_Undefined _value, $Res Function(_Undefined) _then)
      : super(_value, (v) => _then(v as _Undefined));

  @override
  _Undefined get _value => super._value as _Undefined;
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

class __$ErrorCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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
        String uid,
        @jsonKeyTimestamp DateTime today,
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
