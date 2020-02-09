import 'package:firebase/firebase.dart';

class LoginNotifier {
  bool get isAuthenticated => auth().currentUser != null;

  Stream<bool> onLoginStatusChanged() {
    return auth().onAuthStateChanged.map((user) {
      print("$user");
      return user != null;
    });
  }

  void login(String email, String password) {
    auth().signInWithEmailAndPassword(email, password).then((userCredential) {
      print(userCredential.toString());
    }).catchError((err) {
      print(err.toString());
    });
  }
}
