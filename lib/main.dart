import 'package:KoheiKanagu_github_io/pages/home/home_page.dart';
import 'package:KoheiKanagu_github_io/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(0, 164, 172, 1),
      ),
      routes: routes,
      initialRoute: HomePage.routeName,
    );
  }
}
