import 'dart:async';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/home/home_page.dart';
import 'package:logger/logger.dart';

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

class MyApp extends StatefulHookWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(0, 164, 172, 1),
      ),
      onGenerateRoute: useProvider(myRouterProvider).onGenerateRoute,
      navigatorKey: useProvider(myRouterProvider).navigatorKey,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
      ],
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
    }
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

final logger = Logger(
  output: _ConsoleOutputWithCrashlytics(),
  printer: MyCrashlyticsLogPrinter(),
  filter: _LogFilter(),
);

class MyCrashlyticsLogPrinter extends LogPrinter {
  static final levelPrefixes = {
    Level.verbose: '[V]',
    Level.debug: '[D]',
    Level.info: '[I]',
    Level.warning: '[W]',
    Level.error: '[E]',
    Level.wtf: '[WTF]',
  };

  @override
  List<String> log(LogEvent event) {
    final message = 'MESSAGE: ${_stringifyMessage(event.message)}';
    final errorString = '${event.error}';
    final object = errorString != 'null' && errorString.isNotEmpty
        ? 'OBJECT: ${event.error}'
        : '';

    final time = 'TIME: ${DateTime.now().toIso8601String()}';
    final traceRawString =
        event.stackTrace.toString().split('\n').take(4).toString();
    final trace = 'STACKTRACE: $traceRawString';
    return ['${levelPrefixes[event.level]}  $time  $message  $object  $trace'];
  }

  String _stringifyMessage(dynamic message) {
    if (message is Map || message is Iterable) {
      const encoder = JsonEncoder.withIndent(null);
      return encoder.convert(message);
    } else {
      return message.toString();
    }
  }
}

extension LoggerExtension on Logger {
  void debug(String message, dynamic object, StackTrace stackTrace) {
    logger.d(message, object, stackTrace);
  }

  void info(String message, dynamic object, StackTrace stackTrace) {
    logger.i(message, object, stackTrace);
  }

  void warning(String message, dynamic error, StackTrace stackTrace) {
    logger.w(message, error, stackTrace);
  }

  void error(String message, dynamic error, StackTrace stackTrace) {
    logger.e(message, error, stackTrace);
  }
}

class _LogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}

class _ConsoleOutputWithCrashlytics extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(print);
  }
}

final myRouterProvider = Provider<MyRouter>(
  (ref) => MyRouter(ref.read),
);
