import 'dart:async';

import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

class LoginNotifier extends ChangeNotifier {
  User get user => auth().currentUser;

  StreamSubscription<User> _onAuthStateStream;

  LoginNotifier() : super() {
    _onAuthStateStream = auth().onAuthStateChanged.listen((user) {
      print(user);
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _onAuthStateStream?.cancel();
    super.dispose();
  }

  Future<bool> login(String email, String password) {
    return auth()
        .signInWithEmailAndPassword(email, password)
        .then((_) => true)
        .catchError((_) => false)
        .whenComplete(notifyListeners);
  }

  void logout() {
    auth().signOut();
  }
}
