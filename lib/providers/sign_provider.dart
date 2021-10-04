import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/logger.dart';

import 'sign_provider_state.dart';

final signProvider = StateNotifierProvider<SignProvider, SignProviderState>(
  (ref) => SignProvider(
    ref.read,
    FirebaseAuth.instance,
  ),
);

class SignProvider extends StateNotifier<SignProviderState> {
  SignProvider(
    this._read,
    this._auth,
  ) : super(SignProviderState()) {
    if (kIsWeb) {
      _auth.setPersistence(Persistence.LOCAL);
    }

    _auth.authStateChanges().listen(
      (event) {
        logger.info('authStateChanges', event, StackTrace.current);
        state = state.copyWith(
          firebaseUser: AsyncValue.data(event),
        );
      },
    );
  }

  final Reader _read;
  final FirebaseAuth _auth;

  Future<void> signIn({
    required String id,
    required String password,
  }) =>
      _auth.signInWithEmailAndPassword(
        email: id,
        password: password,
      );

  Future<void> signOut() => _auth.signOut();
}
