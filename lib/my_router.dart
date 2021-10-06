import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/app_lifecycle_observer.dart';
import 'package:koheikanagu_github_io/pages/error/error_page.dart';
import 'package:koheikanagu_github_io/pages/root/root_page.dart';
import 'package:koheikanagu_github_io/pages/sign/sign_in_page.dart';
import 'package:koheikanagu_github_io/providers/sign_provider.dart';

final myRouter = Provider<GoRouter>(
  (ref) => GoRouter(
    debugLogDiagnostics: kDebugMode,
    observers: [
      AppLifecycleObserver(),
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
    ],
    routes: [
      GoRoute(
        path: RootPage.path,
        redirect: (_) => RootPage.pagePaths.first,
      ),
      GoRoute(
        path: '/:path',
        redirect: (state) {
          final index = RootPage.pagePaths.indexOf(state.subloc);
          if (index.isNegative) {
            throw Exception(404);
          }
          return null;
        },
        pageBuilder: (context, state) {
          final index = RootPage.pagePaths.indexOf(state.subloc);
          return MaterialPage<void>(
            key: state.pageKey,
            child: RootPage(
              key: ValueKey(state.subloc),
              index: index,
            ),
          );
        },
      ),
      GoRoute(
        path: '/signin',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SignInPage(),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage<void>(
      child: ErrorPage(),
    ),
    redirect: (state) {
      // final isSignedIn = ref.read(signProvider).isSignedIn;
      // final goingToSignIn = state.subloc == '/signin';

      // if (!isSignedIn && !goingToSignIn) {
      //   return '/signin?from=${state.location}';
      // }

      // final params = Uri.parse(state.location).queryParameters;
      // final from = params['from'] ?? '';

      // if (isSignedIn && goingToSignIn) {
      //   return from.isNotEmpty && from != RootPage.path ? from : RootPage.path;
      // }

      return null;
    },
  ),
);

final refreshListenableProvider = Provider(
  (ref) => Listenable.merge(
    [
      ValueNotifier(ref.watch(signProvider).isSignedIn),
    ],
  ),
);
