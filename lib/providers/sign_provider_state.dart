import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'sign_provider_state.freezed.dart';

@freezed
class SignProviderState with _$SignProviderState {
  factory SignProviderState({
    @Default(AsyncValue<User?>.loading()) AsyncValue<User?> firebaseUser,
  }) = _SignProviderState;

  SignProviderState._();

  late final bool isSignedIn = firebaseUser.data?.value != null;
}
