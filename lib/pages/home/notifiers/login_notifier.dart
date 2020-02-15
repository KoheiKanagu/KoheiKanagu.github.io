import 'dart:async';

import 'package:KoheiKanagu_github_io/util/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class LoginNotifier extends ChangeNotifier {
  LoginNotifier() : super() {
    _onAuthStateStream =
        FirebaseAuth.instance.onAuthStateChanged.listen((user) {
      logger.info(user?.uid);
      _user = user;
      notifyListeners();
    });
  }

  FirebaseUser _user;

  FirebaseUser get user => _user;

  StreamSubscription<FirebaseUser> _onAuthStateStream;

  @override
  void dispose() {
    _onAuthStateStream?.cancel();
    super.dispose();
  }

  Future<bool> login(String email, String password) {
    return FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => true)
        .catchError(() => false)
        .whenComplete(notifyListeners);
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }
}
