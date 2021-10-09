// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignProviderStateTearOff {
  const _$SignProviderStateTearOff();

  _SignProviderState call(
      {AsyncValue<User?> firebaseUser = const AsyncValue<User?>.loading()}) {
    return _SignProviderState(
      firebaseUser: firebaseUser,
    );
  }
}

/// @nodoc
const $SignProviderState = _$SignProviderStateTearOff();

/// @nodoc
mixin _$SignProviderState {
  AsyncValue<User?> get firebaseUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignProviderStateCopyWith<SignProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignProviderStateCopyWith<$Res> {
  factory $SignProviderStateCopyWith(
          SignProviderState value, $Res Function(SignProviderState) then) =
      _$SignProviderStateCopyWithImpl<$Res>;
  $Res call({AsyncValue<User?> firebaseUser});
}

/// @nodoc
class _$SignProviderStateCopyWithImpl<$Res>
    implements $SignProviderStateCopyWith<$Res> {
  _$SignProviderStateCopyWithImpl(this._value, this._then);

  final SignProviderState _value;
  // ignore: unused_field
  final $Res Function(SignProviderState) _then;

  @override
  $Res call({
    Object? firebaseUser = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as AsyncValue<User?>,
    ));
  }
}

/// @nodoc
abstract class _$SignProviderStateCopyWith<$Res>
    implements $SignProviderStateCopyWith<$Res> {
  factory _$SignProviderStateCopyWith(
          _SignProviderState value, $Res Function(_SignProviderState) then) =
      __$SignProviderStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncValue<User?> firebaseUser});
}

/// @nodoc
class __$SignProviderStateCopyWithImpl<$Res>
    extends _$SignProviderStateCopyWithImpl<$Res>
    implements _$SignProviderStateCopyWith<$Res> {
  __$SignProviderStateCopyWithImpl(
      _SignProviderState _value, $Res Function(_SignProviderState) _then)
      : super(_value, (v) => _then(v as _SignProviderState));

  @override
  _SignProviderState get _value => super._value as _SignProviderState;

  @override
  $Res call({
    Object? firebaseUser = freezed,
  }) {
    return _then(_SignProviderState(
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as AsyncValue<User?>,
    ));
  }
}

/// @nodoc

class _$_SignProviderState extends _SignProviderState {
  _$_SignProviderState({this.firebaseUser = const AsyncValue<User?>.loading()})
      : super._();

  @JsonKey(defaultValue: const AsyncValue<User?>.loading())
  @override
  final AsyncValue<User?> firebaseUser;

  @override
  String toString() {
    return 'SignProviderState(firebaseUser: $firebaseUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignProviderState &&
            (identical(other.firebaseUser, firebaseUser) ||
                other.firebaseUser == firebaseUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseUser);

  @JsonKey(ignore: true)
  @override
  _$SignProviderStateCopyWith<_SignProviderState> get copyWith =>
      __$SignProviderStateCopyWithImpl<_SignProviderState>(this, _$identity);
}

abstract class _SignProviderState extends SignProviderState {
  factory _SignProviderState({AsyncValue<User?> firebaseUser}) =
      _$_SignProviderState;
  _SignProviderState._() : super._();

  @override
  AsyncValue<User?> get firebaseUser;
  @override
  @JsonKey(ignore: true)
  _$SignProviderStateCopyWith<_SignProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}
