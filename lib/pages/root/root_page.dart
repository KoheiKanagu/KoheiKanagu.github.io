import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/content/content_page.dart';
import 'package:koheikanagu_github_io/pages/profile/profile_page.dart';
import 'package:koheikanagu_github_io/pages/settings/settings_page.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  static const path = '/';

  static const _tabs = [
    Tab(text: 'プロフィール'),
    Tab(text: 'コンテンツ'),
    Tab(text: '設定'),
  ];

  static const pagePaths = [
    ProfilePage.path,
    ContentPage.path,
    SettingsPage.path,
  ];

  final int index;

  static int toPageIndex(String path) => pagePaths.indexOf(path);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
      initialLength: _tabs.length,
      vsync: useSingleTickerProvider(),
      initialIndex: index,
    );

    tabController.addListener(
      () {
        if (!tabController.indexIsChanging) {
          GoRouter.of(context).go(pagePaths[tabController.index]);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: _tabs,
          controller: tabController,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          ProfilePage(),
          ContentPage(),
          SettingsPage(),
        ],
      ),
    );
  }
}
