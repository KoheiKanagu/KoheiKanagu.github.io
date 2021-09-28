import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/app_lifecycle_observer.dart';
import 'package:koheikanagu_github_io/logger.dart';
import 'package:koheikanagu_github_io/pages/home/home_page.dart';

export 'logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runZonedGuarded(
    () {
      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    },
    (error, stack) => logger.error('error', error, stack),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(0, 164, 172, 1),
      ),
      onGenerateRoute: ref.watch(myRouterProvider).onGenerateRoute,
      navigatorKey: ref.watch(myRouterProvider).navigatorKey,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
      ],
      navigatorObservers: [
        AppLifecycleObserver(),
      ],
    );
  }
}

class MyRouter {
  MyRouter(this.reader);

  final navigatorKey = GlobalKey<NavigatorState>();

  final Reader reader;

  Route<dynamic> onGenerateRoute(RouteSettings settings) => MaterialPageRoute(
        builder: (_) => HomePage(),
        settings: const RouteSettings(
          name: HomePage.routeName,
        ),
      );
}

final myRouterProvider = Provider<MyRouter>(
  (ref) => MyRouter(ref.read),
);
