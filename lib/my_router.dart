import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/app_lifecycle_observer.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_page.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_private_page.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_public_page.dart';
import 'package:koheikanagu_github_io/pages/error/error_page.dart';
import 'package:koheikanagu_github_io/pages/profile/profile_page.dart';
import 'package:koheikanagu_github_io/pages/root_page.dart';
import 'package:koheikanagu_github_io/pages/settings/settings_page.dart';
import 'package:koheikanagu_github_io/pages/sign/sign_in_page.dart';
import 'package:koheikanagu_github_io/providers/sign/sign_provider.dart';

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
        path: SignInPage.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SignInPage(),
        ),
      ),
      GoRoute(
        path: ProfilePage.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: const ValueKey(RootPage.path),
          child: RootPage(
            key: ValueKey(state.subloc),
            index: RootPage.pagePaths.indexOf(state.subloc),
          ),
        ),
      ),
      GoRoute(
        path: ContentsPage.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: const ValueKey(RootPage.path),
          child: RootPage(
            key: ValueKey(state.subloc),
            index: RootPage.pagePaths.indexOf(state.subloc),
          ),
        ),
        routes: [
          GoRoute(
            path: ContentsPrivatePage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const ContentsPrivatePage(),
            ),
          ),
          GoRoute(
            path: ContentsPublicPage.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const ContentsPublicPage(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: SettingsPage.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: const ValueKey(RootPage.path),
          child: RootPage(
            key: ValueKey(state.subloc),
            index: RootPage.pagePaths.indexOf(state.subloc),
          ),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage<void>(
      child: ErrorPage(),
    ),
    redirect: (state) {
      final goingToSignIn = state.subloc == SignInPage.path;
      if (!state.subloc.startsWith(ContentsPrivatePage.location) &&
          !goingToSignIn) {
        return null;
      }

      final isSignedIn = ref.read(signProvider).isSignedIn;

      if (!isSignedIn && !goingToSignIn) {
        return '${SignInPage.path}?from=${state.location}';
      }

      final from = state.queryParams['from'] ?? '';

      if (isSignedIn && goingToSignIn) {
        return from.isNotEmpty && from != RootPage.path ? from : RootPage.path;
      }

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
