import 'package:KoheiKanagu_github_io/packages/countdown/screens/countdown_screen.dart';
import 'package:KoheiKanagu_github_io/packages/kintai/screens/kintai_screen.dart';
import 'package:KoheiKanagu_github_io/screens/top/top_screen.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

void main() {
  if (apps.isEmpty) {
    initializeApp(
      apiKey: "AIzaSyCzeHjFxrux4QRFWXFFmVoITuPplQr8HMA",
      authDomain: "kingu-dev.firebaseapp.com",
      databaseURL: "https://kingu-dev.firebaseio.com",
      projectId: "kingu-dev",
      storageBucket: "kingu-dev.appspot.com",
      messagingSenderId: "715119498389",
      appId: "1:715119498389:web:5407c887b027b68217379c",
      measurementId: "G-W0FCGYNSME",
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => TopScreen(),
        "/countdown": (context) => CountdownScreen(),
        "/kintai": (context) => KintaiScreen(),
      },
      initialRoute: "/",
    );
  }
}
