import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/content/content_page.dart';
import 'package:koheikanagu_github_io/pages/profile/profile_page.dart';
import 'package:koheikanagu_github_io/pages/settings/settings_page.dart';
import 'package:koheikanagu_github_io/providers/profile/profile_provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: ref.watch(nyanProvider).when(
              data: (url) => ElevatedButton(
                onPressed: () => launch('https://youtu.be/QH2-TGUlwu4'),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                ),
                child: CachedNetworkImage(
                  imageUrl: url,
                  width: 64,
                ),
              ),
              error: (_, __, ___) => const Icon(
                FontAwesomeIcons.cat,
                size: 64,
              ),
              loading: (previous) => const Icon(
                FontAwesomeIcons.cat,
                size: 64,
              ),
            ),
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
