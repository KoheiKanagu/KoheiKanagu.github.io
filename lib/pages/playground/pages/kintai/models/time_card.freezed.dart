// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'time_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

/// @nodoc
class _$TimeCardTearOff {
  const _$TimeCardTearOff();

  _TimeCard call(
      {String uid = '',
      DateTime? today,
      DateTime? punchInTime,
      DateTime? punchOutTime}) {
    return _TimeCard(
      uid: uid,
      today: today,
      punchInTime: punchInTime,
      punchOutTime: punchOutTime,
    );
  }

  _NotSignedIn notSignedIn() {
    return const _NotSignedIn();
  }

  _Undefined undefined() {
    return const _Undefined();
  }

  _Error error() {
    return const _Error();
  }

  TimeCard fromJson(Map<String, Object> json) {
    return TimeCard.fromJson(json);
  }
}

/// @nodoc
const $TimeCard = _$TimeCardTearOff();

/// @nodoc
mixin _$TimeCard {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)
        $default, {
    required TResult Function() notSignedIn,
    required TResult Function() undefined,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)?
        $default, {
    TResult Function()? notSignedIn,
    TResult Function()? undefined,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeCard value) $default, {
    required TResult Function(_NotSignedIn value) notSignedIn,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeCard value)? $default, {
    TResult Function(_NotSignedIn value)? notSignedIn,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCardCopyWith<$Res> {
  factory $TimeCardCopyWith(TimeCard value, $Res Function(TimeCard) then) =
      _$TimeCardCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeCardCopyWithImpl<$Res> implements $TimeCardCopyWith<$Res> {
  _$TimeCardCopyWithImpl(this._value, this._then);

  final TimeCard _value;
  // ignore: unused_field
  final $Res Function(TimeCard) _then;
}

/// @nodoc
abstract class _$TimeCardCopyWith<$Res> {
  factory _$TimeCardCopyWith(_TimeCard value, $Res Function(_TimeCard) then) =
      __$TimeCardCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      DateTime? today,
      DateTime? punchInTime,
      DateTime? punchOutTime});
}

/// @nodoc
class __$TimeCardCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$TimeCardCopyWith<$Res> {
  __$TimeCardCopyWithImpl(_TimeCard _value, $Res Function(_TimeCard) _then)
      : super(_value, (v) => _then(v as _TimeCard));

  @override
  _TimeCard get _value => super._value as _TimeCard;

  @override
  $Res call({
    Object? uid = freezed,
    Object? today = freezed,
    Object? punchInTime = freezed,
    Object? punchOutTime = freezed,
  }) {
    return _then(_TimeCard(
      uid: uid == freezed ? _value.uid : uid as String,
      today: today == freezed ? _value.today : today as DateTime?,
      punchInTime: punchInTime == freezed
          ? _value.punchInTime
          : punchInTime as DateTime?,
      punchOutTime: punchOutTime == freezed
          ? _value.punchOutTime
          : punchOutTime as DateTime?,
    ));
  }
}

@JsonSerializable()
@DatetimeTimestampConverter()

/// @nodoc
class _$_TimeCard implements _TimeCard {
  const _$_TimeCard(
      {this.uid = '', this.today, this.punchInTime, this.punchOutTime});

  factory _$_TimeCard.fromJson(Map<String, dynamic> json) =>
      _$_$_TimeCardFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String uid;
  @override
  final DateTime? today;
  @override
  final DateTime? punchInTime;
  @override
  final DateTime? punchOutTime;

  @override
  String toString() {
    return 'TimeCard(uid: $uid, today: $today, punchInTime: $punchInTime, punchOutTime: $punchOutTime)';
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

  @JsonKey(ignore: true)
  @override
  _$TimeCardCopyWith<_TimeCard> get copyWith =>
      __$TimeCardCopyWithImpl<_TimeCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)
        $default, {
    required TResult Function() notSignedIn,
    required TResult Function() undefined,
    required TResult Function() error,
  }) {
    return $default(uid, today, punchInTime, punchOutTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)?
        $default, {
    TResult Function()? notSignedIn,
    TResult Function()? undefined,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, today, punchInTime, punchOutTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeCard value) $default, {
    required TResult Function(_NotSignedIn value) notSignedIn,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeCard value)? $default, {
    TResult Function(_NotSignedIn value)? notSignedIn,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
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
      {String uid,
      DateTime? today,
      DateTime? punchInTime,
      DateTime? punchOutTime}) = _$_TimeCard;

  factory _TimeCard.fromJson(Map<String, dynamic> json) = _$_TimeCard.fromJson;

  String get uid => throw _privateConstructorUsedError;
  DateTime? get today => throw _privateConstructorUsedError;
  DateTime? get punchInTime => throw _privateConstructorUsedError;
  DateTime? get punchOutTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TimeCardCopyWith<_TimeCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotSignedInCopyWith<$Res> {
  factory _$NotSignedInCopyWith(
          _NotSignedIn value, $Res Function(_NotSignedIn) then) =
      __$NotSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotSignedInCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$NotSignedInCopyWith<$Res> {
  __$NotSignedInCopyWithImpl(
      _NotSignedIn _value, $Res Function(_NotSignedIn) _then)
      : super(_value, (v) => _then(v as _NotSignedIn));

  @override
  _NotSignedIn get _value => super._value as _NotSignedIn;
}

@JsonSerializable()

/// @nodoc
class _$_NotSignedIn implements _NotSignedIn {
  const _$_NotSignedIn();

  factory _$_NotSignedIn.fromJson(Map<String, dynamic> json) =>
      _$_$_NotSignedInFromJson(json);

  @override
  String toString() {
    return 'TimeCard.notSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)
        $default, {
    required TResult Function() notSignedIn,
    required TResult Function() undefined,
    required TResult Function() error,
  }) {
    return notSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)?
        $default, {
    TResult Function()? notSignedIn,
    TResult Function()? undefined,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeCard value) $default, {
    required TResult Function(_NotSignedIn value) notSignedIn,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_Error value) error,
  }) {
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeCard value)? $default, {
    TResult Function(_NotSignedIn value)? notSignedIn,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
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

/// @nodoc
abstract class _$UndefinedCopyWith<$Res> {
  factory _$UndefinedCopyWith(
          _Undefined value, $Res Function(_Undefined) then) =
      __$UndefinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UndefinedCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$UndefinedCopyWith<$Res> {
  __$UndefinedCopyWithImpl(_Undefined _value, $Res Function(_Undefined) _then)
      : super(_value, (v) => _then(v as _Undefined));

  @override
  _Undefined get _value => super._value as _Undefined;
}

@JsonSerializable()

/// @nodoc
class _$_Undefined implements _Undefined {
  const _$_Undefined();

  factory _$_Undefined.fromJson(Map<String, dynamic> json) =>
      _$_$_UndefinedFromJson(json);

  @override
  String toString() {
    return 'TimeCard.undefined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Undefined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)
        $default, {
    required TResult Function() notSignedIn,
    required TResult Function() undefined,
    required TResult Function() error,
  }) {
    return undefined();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)?
        $default, {
    TResult Function()? notSignedIn,
    TResult Function()? undefined,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeCard value) $default, {
    required TResult Function(_NotSignedIn value) notSignedIn,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_Error value) error,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeCard value)? $default, {
    TResult Function(_NotSignedIn value)? notSignedIn,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
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

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TimeCardCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

@JsonSerializable()

/// @nodoc
class _$_Error implements _Error {
  const _$_Error();

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorFromJson(json);

  @override
  String toString() {
    return 'TimeCard.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)
        $default, {
    required TResult Function() notSignedIn,
    required TResult Function() undefined,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, DateTime? today, DateTime? punchInTime,
            DateTime? punchOutTime)?
        $default, {
    TResult Function()? notSignedIn,
    TResult Function()? undefined,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TimeCard value) $default, {
    required TResult Function(_NotSignedIn value) notSignedIn,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TimeCard value)? $default, {
    TResult Function(_NotSignedIn value)? notSignedIn,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
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
