import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/app_lifecycle_observer.dart';
import 'package:koheikanagu_github_io/pages/error/error_page.dart';
import 'package:koheikanagu_github_io/pages/sign/sign_in_page.dart';
import 'package:koheikanagu_github_io/providers/sign_provider.dart';

final myRouter = Provider<GoRouter>(
  (ref) => GoRouter(
    debugLogDiagnostics: kDebugMode,
    observers: [
      AppLifecycleObserver(),
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
    ],
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: Container(
            color: Colors.red,
            child: ElevatedButton(
              child: const Text('signout'),
              onPressed: () {
                ref.read(signProvider.notifier).signOut();
              },
            ),
          ),
        ),
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
      final isSignedIn = ref.read(signProvider).isSignedIn;
      final goingToSignIn = state.location == '/signin';

      if (!isSignedIn && !goingToSignIn) {
        return '/signin';
      }
      if (isSignedIn && goingToSignIn) {
        return '/';
      }
      return null;
    },
    refreshListenable: Listenable.merge(
      [
        ValueNotifier(ref.watch(signProvider).isSignedIn),
      ],
    ),
  ),
);
