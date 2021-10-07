import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/logger.dart';

import 'sign_provider_state.dart';

final _firebaseAuthProvider = Provider<FirebaseAuth>(
  (_) => FirebaseAuth.instance,
);

final _authStateChangesProvider = StreamProvider<User?>(
  (ref) => ref.watch(_firebaseAuthProvider).authStateChanges(),
);

final signProvider = StateNotifierProvider<SignProvider, SignProviderState>(
  (ref) => SignProvider(
    ref.read,
    ref.watch(_firebaseAuthProvider),
    ref.watch(_authStateChangesProvider),
  ),
);

class SignProvider extends StateNotifier<SignProviderState> {
  SignProvider(
    this._read,
    this._auth,
    AsyncValue<User?> firebaseUser,
  ) : super(
          SignProviderState(
            firebaseUser: firebaseUser,
          ),
        ) {
    if (kIsWeb) {
      _auth.setPersistence(Persistence.LOCAL);
    }

    logger.info('Create SignProvider', state, StackTrace.current);
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
