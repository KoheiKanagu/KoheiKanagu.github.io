import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/main.dart';

class LoginNotifier extends StateNotifier<AsyncValue<User>> {
  LoginNotifier(this.firebaseAuth) : super(const AsyncValue.loading()) {
    _onAuthStateStream = firebaseAuth.authStateChanges().listen((user) {
      logger.info('authStateChange', user?.uid, null);
      if (user == null) {
        state = const AsyncValue.loading();
      } else {
        state = AsyncValue.data(user);
      }
    });
  }

  final FirebaseAuth firebaseAuth;

  late StreamSubscription<User?> _onAuthStateStream;

  @override
  void dispose() {
    _onAuthStateStream.cancel();
    super.dispose();
  }

  Future<bool> login(String email, String password) => firebaseAuth
      .signInWithEmailAndPassword(email: email, password: password)
      .then((value) => true)
      .catchError((dynamic _) => false);

  void logout() {
    firebaseAuth.signOut();
  }
}
