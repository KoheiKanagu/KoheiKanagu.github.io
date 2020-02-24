import 'package:KoheiKanagu_github_io/pages/countdown/countdown_page.dart';
import 'package:KoheiKanagu_github_io/pages/home/home_page.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/kintai_page.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/notifiers/time_card_notifier.dart';
import 'package:KoheiKanagu_github_io/pages/playground/pages/animations_page.dart';
import 'package:KoheiKanagu_github_io/pages/playground/playground_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  CountdownPage.routeName: (context) => const CountdownPage(),
  KintaiPage.routeName: (context) => ChangeNotifierProvider(
        create: (_) => TimeCardNotifier(),
        child: const KintaiPage(),
      ),
  PlayGroundPage.routeName: (context) => const PlayGroundPage(),
  AnimationsPage.routeName: (context) => const AnimationsPage(),
};
