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

  late final bool isSignedIn = firebaseUser.asData?.value != null;

  late final String email = firebaseUser.asData?.value?.email ?? 'unknown';

  late final Iterable<String> providerIds =
      firebaseUser.asData?.value?.providerData.map((e) => e.providerId) ?? [];
}
