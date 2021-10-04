import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/logger.dart';
import 'package:koheikanagu_github_io/my_router.dart';

export 'logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

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
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp.router(
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(0, 164, 172, 1),
        ),
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ja'),
        ],
        routeInformationParser: ref.watch(myRouter).routeInformationParser,
        routerDelegate: ref.watch(myRouter).routerDelegate,
      );
}
