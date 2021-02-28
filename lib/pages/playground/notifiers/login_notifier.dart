import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/main.dart';

class LoginNotifier extends StateNotifier<User> {
  LoginNotifier(this.firebaseAuth) : super(null) {
    _onAuthStateStream = firebaseAuth.authStateChanges().listen((user) {
      logger.info('authStateChange', user?.uid, null);
      state = user;
    });
  }

  final FirebaseAuth firebaseAuth;

  StreamSubscription<User> _onAuthStateStream;

  @override
  void dispose() {
    _onAuthStateStream?.cancel();
    super.dispose();
  }

  Future<bool> login(String email, String password) => firebaseAuth
      .signInWithEmailAndPassword(email: email, password: password)
      .then((value) => true)
      .catchError(() => false);

  void logout() {
    firebaseAuth.signOut();
  }
}
