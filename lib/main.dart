import 'package:KoheiKanagu_github_io/pages/countdown/countdown_page.dart';
import 'package:KoheiKanagu_github_io/pages/home/home_page.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/kintai_page.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

void main() {
  if (apps.isEmpty) {
    initializeApp(
      apiKey: "AIzaSyDQJTMpZQIqeW4HnSwcZXCLgH2TtzaFpog",
      authDomain: "kingu-42.firebaseapp.com",
      databaseURL: "https://kingu-42.firebaseio.com",
      projectId: "kingu-42",
      storageBucket: "kingu-42.appspot.com",
      messagingSenderId: "939401085199",
      appId: "1:939401085199:web:a3c1928a2288329e413e7a",
      measurementId: "G-S2Y86HVFNF",
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 164, 172, 1.0),
      ),
      routes: {
        HomePage.routeName: (context) => HomePage(),
        CountdownPage.routeName: (context) => CountdownPage(),
        KintaiPage.routeName: (context) => KintaiPage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
