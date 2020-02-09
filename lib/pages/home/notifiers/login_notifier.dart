import 'dart:async';

import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

class LoginNotifier extends ChangeNotifier {
  LoginNotifier() : super() {
    _onAuthStateStream = auth().onAuthStateChanged.listen((user) {
      print(user);
      notifyListeners();
    });
  }

  User get user => auth().currentUser;

  StreamSubscription<User> _onAuthStateStream;

  @override
  void dispose() {
    _onAuthStateStream?.cancel();
    super.dispose();
  }

  Future<bool> login(String email, String password) {
    return auth()
        .signInWithEmailAndPassword(email, password)
        .then((_) => true)
        .catchError(() => false)
        .whenComplete(notifyListeners);
  }

  void logout() {
    auth().signOut();
  }
}
