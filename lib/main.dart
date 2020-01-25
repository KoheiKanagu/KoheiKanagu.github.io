import 'package:KoheiKanagu_github_io/packages/countdown/screens/countdown_screen.dart';
import 'package:KoheiKanagu_github_io/packages/kintai/screens/kintai_screen.dart';
import 'package:KoheiKanagu_github_io/screens/top/top_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
