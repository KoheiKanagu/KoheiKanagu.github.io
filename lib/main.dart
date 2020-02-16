import 'package:KoheiKanagu_github_io/pages/countdown/countdown_page.dart';
import 'package:KoheiKanagu_github_io/pages/home/home_page.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/kintai_page.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/notifiers/time_card_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(0, 164, 172, 1),
      ),
      routes: {
        HomePage.routeName: (context) => HomePage(),
        CountdownPage.routeName: (context) => const CountdownPage(),
        KintaiPage.routeName: (context) => ChangeNotifierProvider(
              create: (_) => TimeCardNotifier(),
              child: const KintaiPage(),
            ),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
